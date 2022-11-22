# 📎 PeasY
## 👀 서비스 소개
* 서비스명:  PeasY
* 서비스설명: 2030에게 정부정책을 쉽게 알려주는 SNS
<br>

## 📅 프로젝트 기간
2022.10.14 ~ 2022.11.15
<br>

## ⭐ 주요 기능
* 채팅
* 리뷰

## ⛏ 기술스택
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
         <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/>
         <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/>
         <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>라이브러리</td>
        <td>
           <img src="https://img.shields.io/badge/BootStrap-7952B3?style=for-the-badge&logo=BootStrap&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
          <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
          <img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=VisualStudioCode&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
             <img src="https://img.shields.io/badge/Apache Tomcat-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
          <img src="https://img.shields.io/badge/Oracle 11g-F80000?style=for-the-badge&logo=Oracle&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>협업도구</td>
        <td>
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>
<br>

## ⚙ 시스템 아키텍처
<img src="https://user-images.githubusercontent.com/112475656/203226314-ac0f8a21-2137-45b5-922e-e8a5cc4ded43.JPG"/>
<br>

## 📌 유스케이스
<img src="https://user-images.githubusercontent.com/112475656/203226221-dca118e4-f9e4-40f8-bced-f8a664a5b8cf.JPG"/>
<br>

## 📌 서비스 흐름도
<img src="https://user-images.githubusercontent.com/112475656/203226314-ac0f8a21-2137-45b5-922e-e8a5cc4ded43.JPG"/>
<br>

## 📌 ER다이어그램
<img src="https://user-images.githubusercontent.com/112475656/203226095-dc6be1db-2b31-4d46-bcf1-1c9e3bd142b2.JPG"/>
<br>

## 🖥 화면 구성
### 로그인/회원가입/회원괸리/회원수정/회원탈퇴
![image](https://user-images.githubusercontent.com/25995055/178401098-95f15a0e-a2de-415e-83d5-883bb4cb0656.png)
<br>

## 👨‍👩‍👦‍👦 팀원 역할
<table>
  <tr>
    <td align="center"><img src="https://item.kakaocdn.net/do/fd49574de6581aa2a91d82ff6adb6c0115b3f4e3c2033bfd702a321ec6eda72c" width="100" height="100"/></td>
    <td align="center"><img src="https://mb.ntdtv.kr/assets/uploads/2019/01/Screen-Shot-2019-01-08-at-4.31.55-PM-e1546932545978.png" width="100" height="100"/></td>
    <td align="center"><img src="https://mblogthumb-phinf.pstatic.net/20160127_177/krazymouse_1453865104404DjQIi_PNG/%C4%AB%C4%AB%BF%C0%C7%C1%B7%BB%C1%EE_%B6%F3%C0%CC%BE%F0.png?type=w2" width="100" height="100"/></td>
    <td align="center"><img src="https://i.pinimg.com/236x/ed/bb/53/edbb53d4f6dd710431c1140551404af9.jpg" width="100" height="100"/></td>
    <td align="center"><img src="https://pbs.twimg.com/media/B-n6uPYUUAAZSUx.png" width="100" height="100"/></td>
  </tr>
  <tr>
    <td align="center"><strong>김하랑</strong></td>
    <td align="center"><strong>김영우</strong></td>
    <td align="center"><strong>박상현</strong></td>
    <td align="center"><strong>허유리</strong></td>
    <td align="center"><strong>변우경</strong></td>
  </tr>
  <tr>
    <td align="center"><b>Full Stack</b></td>
    <td align="center"><b>Front-end</b></td>
    <td align="center"><b>Backend</b></td>
    <td align="center"><b>PM,Front-end</b></td>
    <td align="center"><b>Back-end</b></td>
  </tr>
</table>

## 🤾‍♂️ 트러블슈팅
* <b>문제1</b>
  * 외부 템플릿 적용하는 과정에서 기능이 작동하지 않음
  * 해결방안 : 템플릿의 소스코드(js, css)를 직접 수정, 외부 repository에서 제공하는 경우 기능을 간소화하고 직접 구현
* <b>문제2</b>
  * 웹서버 실시간 알림, 채팅 기능 구현의 문제
  * 해결방안 : websocket을 사용하려 했으나 사용하지 못하고 ajax를 활용해 비동기 실시간 새로고침으로 DB에서 값을 불러오는 방식으로 알림 및 채팅 기능을 구현
