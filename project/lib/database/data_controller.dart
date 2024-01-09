import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Data_Control {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore store = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  // 게시물 등록
  Future<bool> notice_input(
      String title,
      String writer,
      String maincategory,
      List<String> subcategory,
      String date,
      int views,
      int like,
      Map<String, String> comment,
      String detail,
      int commentnum) async {
    try {
      await store.collection('Notice').add({
        'title': title, // 제목
        'writer': writer, // 작성자
        'main_category': maincategory, // 대분류
        'sub_category': subcategory, // 소분류
        'date': date, // 작성일
        'views': views, // 조회수
        'like': like, // 좋아요
        'comment': comment, // 댓글
        'detail': detail, // 내용
        'commentnum': commentnum, // 댓글수
      });
      return true;
    } catch (e) {
      print('에러 : $e');
      return false;
    }
  }

  //회원가입
  Future<bool> join_input(String name, String nickname, String email,
      String password, String phonenum) async {
    try {
      // 여기는 회원만 관리하는 데이터 베이스 (auth)
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // 사용자 등록 후 uid 가져오기
      String uid = userCredential.user!.uid;
      // 여기는 단순 데이터베이스 (store)
      await store.collection('User').doc(uid).set({
        'name': name, // 아이디
        'niickname': nickname, // 닉네임
        'email': email, // 이메일
        'password': password, // 패스워드
        'phonenum': phonenum, // 핸드폰
      });
      return true;
    } catch (e) {
      print('에러 : $e');
      return false;
    }
  }

  // 사용자 정보 추가
  // ex> onboarding page 1 => page = page_1 , information = [sex,birthdate]
  Future<bool> input_information(String page, List<String> information) async {
    try {
      String uid = auth.currentUser!.uid;
      if (page == 'page_1') {
        await store
            .collection('User')
            .doc(uid)
            .update({'sex': information[0], 'birthdate': information[1]});
        return true;
      } else if (page == 'page_2') {
        return true;
      }
      return false;
    } catch (e) {
      print('오류 :$e');
      return false;
    }
  }

  // 비밀번호 찾기
  Future<String> find_password(String name, String email, String phone) async {
    print('$name / $email / $phone');
    try {
      CollectionReference users = store.collection('User');
      QuerySnapshot querySnapshot = await users
          .where('email', isEqualTo: email)
          .where('name', isEqualTo: name)
          .where('phonenum', isEqualTo: phone)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        QueryDocumentSnapshot documentSnapshot = querySnapshot.docs.first;

        return documentSnapshot.id;
      } else {
        return '';
      }
    } catch (e) {
      print('오류 : $e');
      return '';
    }
  }

  // 비밀번호 수정
  Future<bool> change_password(String document_id, String password) async {
    try {
      await store
          .collection('User')
          .doc(document_id)
          .update({'password': password});
      return true;
    } catch (e) {
      print('오류 : $e');
      return false;
    }
  }

  // 게시글 가져오기 (컬렉션 이름 널어서)/
  Future<Map<String, dynamic>> get_post(String collection) async {
    try {
      QuerySnapshot querySnapshot = await store.collection(collection).get();
      Map<String, dynamic> result = {};
      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        result[doc.id] = doc.data();
      }
      return result;
    } catch (e) {
      print('오류 : $e');
      return {};
    }
  }

  // 문서 증식용 더미 코드 게시판
  Future<void> increase_date() async {
    try {
      DocumentSnapshot sourceDoc =
          await store.collection('Notice').doc('doc_1704567608711_60766').get();
      Map<String, dynamic>? data = sourceDoc.data() as Map<String, dynamic>?;
      if (data != null) {
        String docname = generateRandomName();
        await store.collection('Notice').doc(docname).set(data);
      } else {
        print('오류??');
      }
    } catch (e) {
      print('오류 : $e');
    }
  }

// 문서 증식용 더미 코드 숏펙
  Future<void> increase_short() async {
    try {
      DocumentSnapshot sourceDoc =
          await store.collection('Shortpec').doc('aaDFiNB0jMBJ7p4zQ7Wq').get();
      Map<String, dynamic>? data = sourceDoc.data() as Map<String, dynamic>?;
      if (data != null) {
        String docname = generateRandomName();
        await store.collection('Shortpec').doc(docname).set(data);
      } else {
        print('오류??');
      }
    } catch (e) {
      print('오류 : $e');
    }
  }

  // 문서이름 랜덤 생성
  String generateRandomName() {
    String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    String randomNumber = Random().nextInt(100000).toString();
    return 'doc_${timestamp}_${randomNumber}';
  }

  //사진 가져오기
  Future<String> get_image(String imagepath) async {
    try {
      Reference reference = storage.ref(imagepath);
      String download = await reference.getDownloadURL();
      return download;
    } catch (e) {
      print('오류  : $e');
      return '';
    }
  }
}
