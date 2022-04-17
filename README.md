# JSP

<details>
<summary>Ch1</summary>
  
  ## 월드와이드웹(World Wide Web)   
  인터넷에서 운영되는 서비스   
  인터넷 = 네트워크망, 웹 = 서비스   
  인터넷상의 정보를 하이퍼텍스트 방식과 멀티미디어 환경에서 검색할 수 있게 해주는 정보 검색 시스템   
  *HTTP 프로토콜* 사용 HTML 문서를 연결하여 다양한 콘텐츠를 제공
  많은 사람들이 정보를 쉽게 공유하고 접근할수 있도록 하는것이 목적
  
  ## 클라이언트-서버 구조   
  * 클라이언트: 웹 서비스를 이용하는 사용자   
  * 서버: 웹 서비스를 제공하기 위한 서비스 공급자
  * 프런트엔드: 클라이언트 중심의 프로그래밍(HTML, CSS, 자바스크립트) 영역
  * 백엔드: 서버를 구성하며 서비스를 제공하기 위한 서버 쪽 프로그래밍(웹 서버 소프트웨어, 웹 프레임워크, 데이터베이스)영역   
  
  ## HTML
  웹 문서의 구조를 정의하고 콘텐츠를 표현하는 기본 마크업 언어   
  웹을 통해 콘텐츠를 제공하려면 HTML을 사용해야 함   
  HTML은 태그라고 하는 간단한 표기법으로 표현하고자 하는 정보에 의미를 부여함
  
  ## CSS(Cascading Style Sheet)
  HTML 문서에 레이아웃과 디자인을 포함한 *시각적 요소*를 정의하기 위한 규격   
  HTML은 콘텐츠의 내용과 구조(레이아웃)를 정의하고 CSS에서는 콘텐츠의 위치, 정렬, 글자 크기, 여백, 배경색상들을 정의함
  디자인을 적용할 HTML요소를 셀렉터(Selector)로 지정하고 원하는 디자인 속성을 부여하는 방식
  
  ## 자바스크립트(JavaScript)   
  HTML 문서에서 동적으로 변하는 콘텐츠를 표현하기 위해 이벤트를 처리를 하거나 서버와 연결하여 데이터를 가지고 오는 등의 역할을 하는 프로그램 언어   
  HTML 문서에서 이벤트를 서버 연결 없이 동적으로 처리할수 있는 기술
  대표적인 자바 스크립트 라이브러리(프레임워크) - 앵귤러 뷰 리액트
  
  ## 백엔드 중심 개발   
  전통적인 웹 개발 모델, 서버에서 모든것을 담당   
  자바/JSP   
  |장점|단점|   
  |:---:|:---:|  
  |서비스 연동에 필요한 다양한 서버 환경에 대응할수 있음|모바일 네트워크의 속도가 느리며 이용에 많은 비용을 지불해야 함|
  |검색 엔진 최적화에 유리함|서버에 화면 갱신을 요청할경우 모든 데이터가 다시 전송되야하므로 모바일 환경에는 부적함|
  |기술이 안정적이고 검증됨|REST API와 클라우드 인프라가 보편화 되면서 기존의 대규모 서버구축하는 모노폴리식 아키텍쳐보다 소규모 서버를 연동하는 MSA 방식이 확산|
  |기존에 개발된 시스템이 많고 레거시 시스템은 오랫동안 유지됨||
  
  ## 프런트엔드 중심 개발
  HTML만 받아오고 서버로부터 화면 구성에 필요한 데이터만 자바 스크립트로 받아와 화면을 조합해 보여줌 CSR(Client Side Rendering)이라고도함   
  |장점|단점|   
  |:---:|:---:|   
  |필요한 부분의 데이터만 갱신, 전체화면 받아올 필요 없음|데이터 제공을 위한 서버는 필요함|   
  |실시간 데이터 갱신 자유로움|데이터 제공 서버는 주로 REST API로 개발, 백엔드 작업이 당연히 존재함|   
  |SPA(Single Page App), PWA(Progressive Web App)등의 구현에 적용할 수 있음|콘텐츠가 검색 엔진에 노출될 수 있도록 SSR(Server Side Rendering)을 접목하기도 함|
  |React.js, Vue.js등 다양한 라이브러리/프레임워크를 사용할수 있음||   
  
</details>

<details>
<summary>Ch2</summary>
 ## 서블릿 컨테이너(Web Application Server, WAS)   
  이름과 같이 웹 애플리케이션을 구동하는 서버를 의미함   
  서버 컴퓨터가 WAS로 동작하려면 서블릿 컨테이너가 필요함   
  실제 서비스 시스템을 구축할 떄는 정적 콘텐츠 서비스를 위한 웹서버와 WAS를 병행해 운영하며 설정을 통해 상호 연동되는 구조를 가짐
  
 ## 배포   
  웹: 운영 서버로 소스코드 복사하고 WAS에 등록하는 과정   
  모바일 앱: 앱스토어 업로드     
  웹 애플리케이션: WAR형태로 패키징한 후 아파치 톰캣에 전달해 실행   
  
</details>

<details>
<summary>Ch3</summary>
  
  ## HTML
  클라이언트가 서버로부터 수신하는 데이터 구조   
  
  ## 하이퍼텍스트   
  다른정보와 연결된 텍스트를 의미
  
  ## 마크업 언어   
  텍스트에 의미를 부여하기 위해 태그를 사용하여 문서에 주석을 다는 표현 시스템   
  
  ## XML   
  HTML보다 범용적으로 사용할수 있는 마크업 언어
  
  ## 태그
  <>를 사용하여 나타냄   
  일반적으로 시작과 끝 2개의쌍, 종료태그는 /로 표현
  모든태그가 종료태그를 가지는건 아님
  대소문자 구분X, 추가적인 정보 부여는 속성 사용
  시작 종료 사이를 *태그 보디* 라고함
  
  ## 속성
  태그에 추가 정보를 제공하기 위해 사용함   
  사용할 수 있는 속성역시 정해져있음
  
  ## 시맨틱 태그
  특별한 의미를 가지는 태그, 문서 구조 정의하는데 주로 사용   
  ex. header footer 
  
  ## CSS   
  디자인 담당, 디자인만 바꾸거나 내용만 변경하기 용이
  선택자와 선언부로 구성 선언부는 {} 블록 사용 각속성 정의는 ;으로 끝남   
  ex.   
  |선택자|선언부|   
  |:---:|:---:|   
  |h1|{color: red; font-size = 15px;|
  
  ## CSS 적용법
  인라인 스타일 시트: HTML 태그에 CSS 속성정의   
  내장 스타일 시트: head부분에 CSS정의 부분을 포함   
  외장 스타일 시트: 별도의 CSS 파일 생성후 HTML문서에 링크로 포함
  
  ## 자바스크립트 
  동적으로 변경되는 부분을 담당 웹 브라우저에서 해석되는 인터프리터 언어
  
  ## 자바스크립트의 특징   
  동적, 타입명시 필요없는 인터프리터 언어   
  객체지향, 함수형 프로그래밍 모두 표현가능   
  HTML 내용, 속성, 스타일을 변경할 수 있음   
  이벤트를 처리하고 사용자와의 상호작용을 가능하게 함   
  서버와 실시간 통신 기능을 제공
  
  ## 문서 객체 모델 (DOM)
  자바스크립에서는 DOM을 통해 HTML 요소에 접근   
  DOM은 HTML 문서 구조 전체를 객체화한 것을 의미
  
</details>

<details>
<summary>Ch4</summary>

</details>

<details>
<summary>Ch5</summary>

</details>

<details>
<summary>Ch6</summary>

</details>

<details>
<summary>예문</summary>

</details>
