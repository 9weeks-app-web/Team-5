import 'dart:math';

import 'package:get/get.dart';

final List<Map<String, dynamic>> dummyData = [
  {
    'deadline': '5',
    'tag': '디자인',
    'title': 'UX/UI 디자이너 채용',
    'company': '에이컴퍼니',
    'location': '서울 강남구',
    'date': '24.01.01',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (5).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (5).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '20',
    'tag': '디자인',
    'title': 'GUI 디자이너 채용',
    'company': '씨컴퍼니',
    'location': '서울 강북구',
    'date': '24.01.03',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (4).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (4).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '5',
    'tag': '개발',
    'title': '백엔드 개발자 채용',
    'company': '이컴퍼니',
    'location': '서울 서초구',
    'date': '24.01.05',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (2).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (2).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '30',
    'tag': '개발',
    'title': '프론트엔드 개발자 채용',
    'company': '비컴퍼니',
    'location': '서울 서초구',
    'date': '24.01.04',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (3).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (3).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '9',
    'tag': '디자인',
    'title': 'UX/UI 디자이너 채용',
    'company': '에이컴퍼니',
    'location': '서울 강남구',
    'date': '24.01.05',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (1).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (1).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '16',
    'tag': '디자인',
    'title': 'UX/UI 디자이너 채용',
    'company': '에이컴퍼니',
    'location': '서울 강남구',
    'date': '24.01.06',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (5).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (5).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '10',
    'tag': '개발',
    'title': '백엔드 개발자 채용',
    'company': '이컴퍼니',
    'location': '서울 서초구',
    'date': '24.01.09',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (4).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (4).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '3',
    'tag': '디자인',
    'title': 'UX/UI 디자이너 채용',
    'company': '에이컴퍼니',
    'location': '서울 강남구',
    'date': '24.01.11',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (3).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (3).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '10',
    'tag': '디자인',
    'title': 'UX/UI 디자이너 채용',
    'company': '에이컴퍼니',
    'location': '서울 강남구',
    'date': '24.01.10',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (2).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (2).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
  {
    'deadline': '10',
    'tag': '디자인',
    'title': 'UX/UI 디자이너 채용',
    'company': '에이컴퍼니',
    'location': '서울 강남구',
    'date': '24.01.01',
    'thumbnail': 'assets/images/noticeofemployment/Thumbnail_Small (1).png',
    'image': 'assets/images/noticeofemployment/Thumbnail_Big.png',
    'longimage': 'assets/images/noticeofemployment/Thumbnail_Long (1).png',
    'jobdescription': '''
모바일, 웹서비스 UX/UI 기획
프로덕트 방향성 제시 및 구체화
디자인 트렌드 리서치와 분석
디자인 컨셉 빌딩 및 프로토타입 제작
디자인 가이드라인 제작''',
    'requirement': '''초대졸 이상
Sketch, Figma 사용 유경험자
Adobe Photoshop, Illustration 사용 유경험자
디자인 트렌드와 디지털 기기에 대한 관심이 많은 분
유연한 커뮤니케이션 능력을 갖추신 분''',
    'preferred': '''유관업무 경험자 (인턴, 알바 포함)
Prototype tool 사용 유경험자 (XD, ProtoPie, Figma)
디자인 가이드라인 제작 및 Zeplin 사용 유경험자''',
    'benefit': '''국민연금, 고용보험, 산재보험, 건강보험, 퇴직연금
성장/성과에 따른 인센티브 지급
설, 추석 명절 선물 지급
생일 축하 지원
야근 시 식대, 교통비 지원''',
    'map': '서울 강남구 강남대로',
  },
];

class ClickController extends GetxController {
  List<int> clickCounts = List<int>.filled(dummyData.length, 0);
}

class BookmarkController extends GetxController {
  List<bool> bookmarked = List<bool>.filled(dummyData.length, false);
  // List<int> bookmarkCounter = List<int>.filled(dummyData.length, 4);
  List<int> bookmarkCounter = List<int>.generate(dummyData.length, (i) => Random().nextInt(11));

  void toggleBookmark(int index) {
    bookmarked[index] = !bookmarked[index];
    if (bookmarked[index]) {
      bookmarkCounter[index]++;
    } else {
      bookmarkCounter[index]--;
    }
    update();
  }
}
