/**
 * Created by PPG on 2014-11-28.
 */

// root:질문키워드.질문 선택지들이 모여있음
// item:질문에 대한 답
// img:질문항목에 띄울 이미지파일
// rootStr:답을 선택하면 추가될 키워드
// rootSet:다음 선택지로 이동할때 사용될 질문키워드. 대분류를 제외하면 root에 rootStr이 추가되는것임
// res:마지막 질문인지에 대한 여부. Y라면 검색결과를 모아둔 화면으로 전환되게 된다
// question:질문

// 배열 세팅
// 식물-나무 분류 완료
// 식물-꽃 분류 완료

function setArr(){

    // 대분류 : 검색 시작
    rootArr.push({root:'s',item:'식물',img:'식물.png',rootStr:'p',rootSet:'p',res:'n',question:'어떤 종류인가요?'});
    rootArr.push({root:'s',item:'동물',img:'동물.png',rootStr:'a',rootSet:'a',res:'n',question:'어떤 종류인가요?'});    // 미구현
    rootArr.push({root:'s',item:'곤충',img:'곤충.png',rootStr:'b',rootSet:'b',res:'n',question:'어떤 종류인가요?'});    // 미구현

    // level1 : 식물 : 종류
    rootArr.push({root:'p',item:'나무',img:'나무.png',rootStr:'1',rootSet:'p1',res:'n',question:'어떤 식물인가요?'});
    rootArr.push({root:'p',item:'꽃',img:'꽃.png',rootStr:'2',rootSet:'p2',res:'n',question:'어떤 식물인가요?'});
    rootArr.push({root:'p',item:'풀',img:'풀.png',rootStr:'3',rootSet:'p3',res:'n',question:'어떤 식물인가요?'});    // 미구현

    //--------------------------------------------------------------------------------------

    // 나무분류

    // level2 : 식물-나무 : 계절
    rootArr.push({root:'p1',item:'봄',img:'봄.png',rootStr:'a',rootSet:'p1a',res:'n',question:'계절을 알려주세요.'});
    rootArr.push({root:'p1',item:'여름',img:'여름.png',rootStr:'b',rootSet:'p1b',res:'n',question:'계절을 알려주세요.'});
    rootArr.push({root:'p1',item:'가을',img:'가을.png',rootStr:'c',rootSet:'p1c',res:'n',question:'계절을 알려주세요.'});
    rootArr.push({root:'p1',item:'겨울',img:'겨울.png',rootStr:'d',rootSet:'p1d',res:'n',question:'계절을 알려주세요.'});

    //--------------------------------------------------------------------------------------

    // level3 : 식물-나무-봄 : 가지에 달린것
    rootArr.push({root:'p1a',item:'꽃',img:'가지꽃.png',rootStr:'1',rootSet:'p1a1',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});
    rootArr.push({root:'p1a',item:'잎',img:'가지잎.png',rootStr:'2',rootSet:'p1a2',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});
    rootArr.push({root:'p1a',item:'열매',img:'가지열매.png',rootStr:'3',rootSet:'p1a3',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});

    // level3 : 식물-나무-여름 : 가지에 달린것
    rootArr.push({root:'p1b',item:'꽃',img:'가지꽃.png',rootStr:'1',rootSet:'p1b1',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});
    rootArr.push({root:'p1b',item:'잎',img:'가지잎.png',rootStr:'2',rootSet:'p1b2',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});
    rootArr.push({root:'p1b',item:'열매',img:'가지열매.png',rootStr:'3',rootSet:'p1b3',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});

    // level3 : 식물-나무-가을 : 가지에 달린것
    rootArr.push({root:'p1c',item:'꽃',img:'가지꽃.png',rootStr:'1',rootSet:'p1c1',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});
    rootArr.push({root:'p1c',item:'잎',img:'가지잎.png',rootStr:'2',rootSet:'p1c2',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});
    rootArr.push({root:'p1c',item:'열매',img:'가지열매.png',rootStr:'3',rootSet:'p1c3',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});

    // level3 : 식물-나무-겨울 : 가지에 달린것
    rootArr.push({root:'p1d',item:'꽃',img:'가지꽃.png',rootStr:'1',rootSet:'p1d1',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});
    rootArr.push({root:'p1d',item:'잎',img:'가지잎.png',rootStr:'2',rootSet:'p1d2',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});
    rootArr.push({root:'p1d',item:'열매',img:'가지열매.png',rootStr:'3',rootSet:'p1d3',res:'n',question:'나뭇가지에 달려있는것이 무엇인가요?'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-봄-꽃 : 꽃의 색깔
    rootArr.push({root:'p1a1',item:'빨강',img:'꽃색빨강.png',rootStr:'a',rootSet:'p1a1a',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1a1',item:'노랑',img:'꽃색노랑.png',rootStr:'b',rootSet:'p1a1b',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1a1',item:'보라',img:'꽃색보라.png',rootStr:'c',rootSet:'p1a1c',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1a1',item:'흰색',img:'꽃색흰색.png',rootStr:'d',rootSet:'p1a1d',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1a1',item:'분홍',img:'꽃색분홍.png',rootStr:'e',rootSet:'p1a1e',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1a1',item:'섞임',img:'꽃색섞임.png',rootStr:'f',rootSet:'p1a1f',res:'n',question:'꽃의 색을 골라주세요.'});

    // level4 : 식물-나무-봄-잎 : 잎의 모양
    rootArr.push({root:'p1a2',item:'바늘',img:'잎바늘.png',rootStr:'a',rootSet:'p1a2a',res:'y',question:'잎의 모양을 골라주세요.'});
    rootArr.push({root:'p1a2',item:'타원',img:'잎타원.png',rootStr:'b',rootSet:'p1a2b',res:'y',question:'잎의 모양을 골라주세요.'});
    rootArr.push({root:'p1a2',item:'불규칙',img:'잎불규칙.png',rootStr:'c',rootSet:'p1a2c',res:'y',question:'잎의 모양을 골라주세요.'});

    // level4 : 식물-나무-봄-열매 : 열매의 크기
    rootArr.push({root:'p1a3',item:'포도',img:'포도.png',rootStr:'b',rootSet:'p1a3b',res:'n',question:'열매의 크기는 어느정도인가요?'});
    rootArr.push({root:'p1a3',item:'레몬',img:'레몬.png',rootStr:'c',rootSet:'p1a3c',res:'n',question:'열매의 크기는 어느정도인가요?'});
    rootArr.push({root:'p1a3',item:'사과',img:'사과.png',rootStr:'d',rootSet:'p1a3d',res:'n',question:'열매의 크기는 어느정도인가요?'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-여름-꽃 : 꽃의 색깔
    rootArr.push({root:'p1b1',item:'빨강',img:'꽃색빨강.png',rootStr:'a',rootSet:'p1b1a',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1b1',item:'노랑',img:'꽃색노랑.png',rootStr:'b',rootSet:'p1b1b',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1b1',item:'보라',img:'꽃색보라.png',rootStr:'c',rootSet:'p1b1c',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1b1',item:'흰색',img:'꽃색흰색.png',rootStr:'d',rootSet:'p1b1d',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1b1',item:'분홍',img:'꽃색분홍.png',rootStr:'e',rootSet:'p1b1e',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1b1',item:'섞임',img:'꽃색섞임.png',rootStr:'f',rootSet:'p1b1f',res:'n',question:'꽃의 색을 골라주세요.'});

    // level4 : 식물-나무-여름-잎 : 잎의 모양
    rootArr.push({root:'p1b2',item:'바늘',img:'잎바늘.png',rootStr:'a',rootSet:'p1b2a',res:'y',question:'잎의 모양을 골라주세요.'});
    rootArr.push({root:'p1b2',item:'타원',img:'잎타원.png',rootStr:'b',rootSet:'p1b2b',res:'y',question:'잎의 모양을 골라주세요.'});
    rootArr.push({root:'p1b2',item:'불규칙',img:'잎불규칙.png',rootStr:'c',rootSet:'p1b2c',res:'y',question:'잎의 모양을 골라주세요.'});

    // level4 : 식물-나무-여름-열매 : 열매의 크기
    rootArr.push({root:'p1b3',item:'포도',img:'포도.png',rootStr:'b',rootSet:'p1b3b',res:'n',question:'열매의 크기는 어느정도인가요?'});
    rootArr.push({root:'p1b3',item:'레몬',img:'레몬.png',rootStr:'c',rootSet:'p1b3c',res:'n',question:'열매의 크기는 어느정도인가요?'});
    rootArr.push({root:'p1b3',item:'사과',img:'사과.png',rootStr:'d',rootSet:'p1b3d',res:'n',question:'열매의 크기는 어느정도인가요?'});
    
    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-가을-꽃 : 꽃의 색깔
    rootArr.push({root:'p1c1',item:'빨강',img:'꽃색빨강.png',rootStr:'a',rootSet:'p1c1a',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1c1',item:'노랑',img:'꽃색노랑.png',rootStr:'b',rootSet:'p1c1b',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1c1',item:'보라',img:'꽃색보라.png',rootStr:'c',rootSet:'p1c1c',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1c1',item:'흰색',img:'꽃색흰색.png',rootStr:'d',rootSet:'p1c1d',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1c1',item:'분홍',img:'꽃색분홍.png',rootStr:'e',rootSet:'p1c1e',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1c1',item:'섞임',img:'꽃색섞임.png',rootStr:'f',rootSet:'p1c1f',res:'n',question:'꽃의 색을 골라주세요.'});

    // level4 : 식물-나무-가을-잎 : 잎의 모양
    rootArr.push({root:'p1c1',item:'바늘',img:'잎바늘.png',rootStr:'a',rootSet:'p1c2a',res:'y',question:'잎의 모양을 골라주세요.'});
    rootArr.push({root:'p1c2',item:'타원',img:'잎타원.png',rootStr:'b',rootSet:'p1c2b',res:'y',question:'잎의 모양을 골라주세요.'});
    rootArr.push({root:'p1c2',item:'불규칙',img:'잎불규칙.png',rootStr:'c',rootSet:'p1c2c',res:'y',question:'잎의 모양을 골라주세요.'});

    // level4 : 식물-나무-가을-열매 : 열매의 크기
    rootArr.push({root:'p1c3',item:'포도',img:'포도.png',rootStr:'b',rootSet:'p1c3b',res:'n',question:'열매의 크기는 어느정도인가요?'});
    rootArr.push({root:'p1c3',item:'레몬',img:'레몬.png',rootStr:'c',rootSet:'p1c3c',res:'n',question:'열매의 크기는 어느정도인가요?'});
    rootArr.push({root:'p1c3',item:'사과',img:'사과.png',rootStr:'d',rootSet:'p1c3d',res:'n',question:'열매의 크기는 어느정도인가요?'});
    
    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-겨울-꽃 : 꽃의 색깔
    rootArr.push({root:'p1d1',item:'빨강',img:'꽃색빨강.png',rootStr:'a',rootSet:'p1d1a',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1d1',item:'노랑',img:'꽃색노랑.png',rootStr:'b',rootSet:'p1d1b',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1d1',item:'보라',img:'꽃색보라.png',rootStr:'c',rootSet:'p1d1c',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1d1',item:'흰색',img:'꽃색흰색.png',rootStr:'d',rootSet:'p1d1d',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1d1',item:'분홍',img:'꽃색분홍.png',rootStr:'e',rootSet:'p1d1e',res:'n',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p1d1',item:'섞임',img:'꽃색섞임.png',rootStr:'f',rootSet:'p1d1f',res:'n',question:'꽃의 색을 골라주세요.'});

    // level4 : 식물-나무-겨울-잎 : 잎의 모양
    rootArr.push({root:'p1d2',item:'바늘',img:'잎바늘.png',rootStr:'a',rootSet:'p1d2a',res:'y',question:'잎의 모양을 골라주세요.'});
    rootArr.push({root:'p1d2',item:'타원',img:'잎타원.png',rootStr:'b',rootSet:'p1d2b',res:'y',question:'잎의 모양을 골라주세요.'});
    rootArr.push({root:'p1d2',item:'불규칙',img:'잎불규칙.png',rootStr:'c',rootSet:'p1d2c',res:'y',question:'잎의 모양을 골라주세요.'});

    // level4 : 식물-나무-겨울-열매 : 열매의 크기
    rootArr.push({root:'p1d3',item:'포도',img:'포도.png',rootStr:'b',rootSet:'p1d3b',res:'n',question:'열매의 크기는 어느정도인가요?'});
    rootArr.push({root:'p1d3',item:'레몬',img:'레몬.png',rootStr:'c',rootSet:'p1d3c',res:'n',question:'열매의 크기는 어느정도인가요?'});
    rootArr.push({root:'p1d3',item:'사과',img:'사과.png',rootStr:'d',rootSet:'p1d3d',res:'n',question:'열매의 크기는 어느정도인가요?'});
    
    // 나무-잎 분류 끝

    //--------------------------------------------------------------------------------------

    // level5 : 식물-나무-봄-꽃-빨강 : 꽃의 크기
    rootArr.push({root:'p1a1a',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1a1a1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1a1a',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1a1a2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-봄-꽃-노랑 : 꽃의 크기
    rootArr.push({root:'p1a1b',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1a1b1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1a1b',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1a1b2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-봄-꽃-보라 : 꽃의 크기
    rootArr.push({root:'p1a1c',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1a1c1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1a1c',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1a1c2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-봄-꽃-흰색 : 꽃의 크기
    rootArr.push({root:'p1a1d',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1a1d1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1a1d',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1a1d2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-봄-꽃-분홍 : 꽃의 크기
    rootArr.push({root:'p1a1e',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1a1e1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1a1e',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1a1e2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-봄-꽃-섞임 : 꽃의 크기
    rootArr.push({root:'p1a1f',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1a1f1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1a1f',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1a1f2',res:'y',question:'꽃의 크기는 어떤가요?'});

    //--------------------------------------------------------------------------------------

    // level5 : 식물-나무-여름-꽃-빨강 : 꽃의 크기
    rootArr.push({root:'p1b1a',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1b1a1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1b1a',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1b1a2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-여름-꽃-노랑 : 꽃의 크기
    rootArr.push({root:'p1b1b',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1b1b1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1b1b',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1b1b2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-여름-꽃-보라 : 꽃의 크기
    rootArr.push({root:'p1b1c',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1b1c1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1b1c',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1b1c2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-여름-꽃-흰색 : 꽃의 크기
    rootArr.push({root:'p1b1d',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1b1d1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1b1d',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1b1d2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-여름-꽃-분홍 : 꽃의 크기
    rootArr.push({root:'p1b1e',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1b1e1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1b1e',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1b1e2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-여름-꽃-섞임 : 꽃의 크기
    rootArr.push({root:'p1b1f',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1b1f1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1b1f',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1b1f2',res:'y',question:'꽃의 크기는 어떤가요?'});

    //--------------------------------------------------------------------------------------

    // level5 : 식물-나무-가을-꽃-빨강 : 꽃의 크기
    rootArr.push({root:'p1c1a',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1c1a1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1c1a',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1c1a2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-가을-꽃-노랑 : 꽃의 크기
    rootArr.push({root:'p1c1b',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1c1b1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1c1b',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1c1b2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-가을-꽃-보라 : 꽃의 크기
    rootArr.push({root:'p1c1c',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1c1c1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1c1c',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1c1c2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-가을-꽃-흰색 : 꽃의 크기
    rootArr.push({root:'p1c1d',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1c1d1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1c1d',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1c1d2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-가을-꽃-분홍 : 꽃의 크기
    rootArr.push({root:'p1c1e',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1c1e1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1c1e',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1c1e2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-가을-꽃-섞임 : 꽃의 크기
    rootArr.push({root:'p1c1f',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1c1f1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1c1f',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1c1f2',res:'y',question:'꽃의 크기는 어떤가요?'});

    //--------------------------------------------------------------------------------------

    // level5 : 식물-나무-겨울-꽃-빨강 : 꽃의 크기
    rootArr.push({root:'p1d1a',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1d1a1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1d1a',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1d1a2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-겨울-꽃-노랑 : 꽃의 크기
    rootArr.push({root:'p1d1b',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1d1b1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1d1b',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1d1b2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-겨울-꽃-보라 : 꽃의 크기
    rootArr.push({root:'p1d1c',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1d1c1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1d1c',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1d1c2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-겨울-꽃-흰색 : 꽃의 크기
    rootArr.push({root:'p1d1d',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1d1d1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1d1d',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1d1d2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-겨울-꽃-분홍 : 꽃의 크기
    rootArr.push({root:'p1d1e',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1d1e1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1d1e',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1d1e2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // level5 : 식물-나무-겨울-꽃-섞임 : 꽃의 크기
    rootArr.push({root:'p1d1f',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p1d1f1',res:'y',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p1d1f',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p1d1f2',res:'y',question:'꽃의 크기는 어떤가요?'});

    // 나무-꽃 분류 끝

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-봄-열매-포도 : 열매의 색깔
    rootArr.push({root:'p1a3a',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1a3a1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3a',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1a3a2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3a',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1a3a3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3a',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1a3a4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3a',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1a3a5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3a',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1a3a6',res:'y',question:'열매의 색을 골라주세요.'});

    // level4 : 식물-나무-봄-열매-레몬 : 열매의 색깔
    rootArr.push({root:'p1a3b',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1a3b1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3b',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1a3b2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3b',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1a3b3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3b',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1a3b4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3b',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1a3b5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3b',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1a3b6',res:'y',question:'열매의 색을 골라주세요.'});

    // level4 : 식물-나무-봄-열매-사과 : 열매의 색깔
    rootArr.push({root:'p1a3c',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1a3c1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3c',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1a3c2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3c',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1a3c3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3c',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1a3c4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3c',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1a3c5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1a3c',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1a3c6',res:'y',question:'열매의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-여름-열매-포도 : 열매의 색깔
    rootArr.push({root:'p1b3a',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1b3a1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3a',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1b3a2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3a',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1b3a3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3a',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1b3a4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3a',item:'빨강',img:'열매색초록.png',rootStr:'5',rootSet:'p1b3a5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3a',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1b3a6',res:'y',question:'열매의 색을 골라주세요.'});

    // level4 : 식물-나무-여름-열매-레몬 : 열매의 색깔
    rootArr.push({root:'p1b3b',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1b3b1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3b',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1b3b2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3b',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1b3b3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3b',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1b3b4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3b',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1b3b5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3b',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1b3b6',res:'y',question:'열매의 색을 골라주세요.'});

    // level4 : 식물-나무-여름-열매-사과 : 열매의 색깔
    rootArr.push({root:'p1b3c',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1b3c1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3c',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1b3c2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3c',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1b3c3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3c',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1b3c4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3c',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1b3c5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1b3c',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1b3c6',res:'y',question:'열매의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-가을-열매-포도 : 열매의 색깔
    rootArr.push({root:'p1c3a',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1c3a1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3a',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1c3a2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3a',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1c3a3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3a',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1c3a4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3a',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1c3a5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3a',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1c3a6',res:'y',question:'열매의 색을 골라주세요.'});

    // level4 : 식물-나무-가을-열매-레몬 : 열매의 색깔
    rootArr.push({root:'p1c3b',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1c3b1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3b',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1c3b2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3b',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1c3b3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3b',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1c3b4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3b',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1c3b5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3b',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1c3b6',res:'y',question:'열매의 색을 골라주세요.'});

    // level4 : 식물-나무-가을-열매-사과 : 열매의 색깔
    rootArr.push({root:'p1c3c',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1c3c1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3c',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1c3c2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3c',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1c3c3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3c',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1c3c4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3c',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1c3c5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1c3c',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1c3c6',res:'y',question:'열매의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-겨울-열매-포도 : 열매의 색깔
    rootArr.push({root:'p1d3a',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1d3a1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3a',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1d3a2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3a',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1d3a3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3a',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1d3a4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3a',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1d3a5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3a',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1d3a6',res:'y',question:'열매의 색을 골라주세요.'});

    // level4 : 식물-나무-겨울-열매-레몬 : 열매의 색깔
    rootArr.push({root:'p1d3b',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1d3b1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3b',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1d3b2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3b',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1d3b3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3b',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1d3b4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3b',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1d3b5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3b',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1d3b6',res:'y',question:'열매의 색을 골라주세요.'});

    // level4 : 식물-나무-겨울-열매-사과 : 열매의 색깔
    rootArr.push({root:'p1d3c',item:'노랑',img:'열매색노랑.png',rootStr:'1',rootSet:'p1d3c1',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3c',item:'주황',img:'열매색주황.png',rootStr:'2',rootSet:'p1d3c2',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3c',item:'갈색',img:'열매색갈색.png',rootStr:'3',rootSet:'p1d3c3',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3c',item:'초록',img:'열매색초록.png',rootStr:'4',rootSet:'p1d3c4',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3c',item:'빨강',img:'열매색빨강.png',rootStr:'5',rootSet:'p1d3c5',res:'y',question:'열매의 색을 골라주세요.'});
    rootArr.push({root:'p1d3c',item:'보라',img:'열매색보라.png',rootStr:'6',rootSet:'p1d3c6',res:'y',question:'열매의 색을 골라주세요.'});

    // 나무-열매 분류 끝
    // 나무분류 완료

    //--------------------------------------------------------------------------------------

    // 꽃 분류

    // level2 : 식물-꽃 : 계절
    rootArr.push({root:'p2',item:'봄',img:'봄.png',rootStr:'a',rootSet:'p2a',res:'n',question:'계절을 알려주세요.'});
    rootArr.push({root:'p2',item:'여름',img:'여름.png',rootStr:'b',rootSet:'p2b',res:'n',question:'계절을 알려주세요.'});
    rootArr.push({root:'p2',item:'가을',img:'가을.png',rootStr:'c',rootSet:'p2c',res:'n',question:'계절을 알려주세요.'});
    rootArr.push({root:'p2',item:'겨울',img:'겨울.png',rootStr:'d',rootSet:'p2d',res:'n',question:'계절을 알려주세요.'});

    //--------------------------------------------------------------------------------------

    // level3 : 식물-꽃-봄 : 크기
    rootArr.push({root:'p2a',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p2a1',res:'n',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p2a',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p2a2',res:'n',question:'꽃의 크기는 어떤가요?'});

    // level3 : 식물-꽃-여름 : 크기
    rootArr.push({root:'p2b',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p2b1',res:'n',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p2b',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p2b2',res:'n',question:'꽃의 크기는 어떤가요?'});

    // level3 : 식물-꽃-가을 : 크기
    rootArr.push({root:'p2c',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p2c1',res:'n',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p2c',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p2c2',res:'n',question:'꽃의 크기는 어떤가요?'});

    // level3 : 식물-꽃-겨울 : 크기
    rootArr.push({root:'p2d',item:'크다',img:'꽃큰.png',rootStr:'1',rootSet:'p2d1',res:'n',question:'꽃의 크기는 어떤가요?'});
    rootArr.push({root:'p2d',item:'작다',img:'꽃작은.png',rootStr:'2',rootSet:'p2d2',res:'n',question:'꽃의 크기는 어떤가요?'});

    //--------------------------------------------------------------------------------------

    //level4 : 식물-꽃-봄-크다 : 꽃잎 형태
    rootArr.push({root:'p2a1',item:'겹침',img:'꽃겹침.png',rootStr:'a',rootSet:'p2a1a',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2a1',item:'안겹침',img:'꽃안겹침.png',rootStr:'b',rootSet:'p2a1b',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2a1',item:'일체형',img:'꽃통.png',rootStr:'c',rootSet:'p2a1c',res:'n',question:'꽃잎의 모양을 골라주세요.'});

    //level4 : 식물-꽃-봄-작다 : 꽃잎 형태
    rootArr.push({root:'p2a2',item:'겹침',img:'꽃겹침.png',rootStr:'a',rootSet:'p2a2a',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2a2',item:'안겹침',img:'꽃안겹침.png',rootStr:'b',rootSet:'p2a2b',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2a2',item:'일체형',img:'꽃통.png',rootStr:'c',rootSet:'p2a2c',res:'n',question:'꽃잎의 모양을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level4 : 식물-꽃-여름-크다 : 꽃잎 형태
    rootArr.push({root:'p2b1',item:'겹침',img:'꽃겹침.png',rootStr:'a',rootSet:'p2b1a',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2b1',item:'안겹침',img:'꽃안겹침.png',rootStr:'b',rootSet:'p2b1b',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2b1',item:'일체형',img:'꽃통.png',rootStr:'c',rootSet:'p2b1c',res:'n',question:'꽃잎의 모양을 골라주세요.'});

    //level4 : 식물-꽃-여름-작다 : 꽃잎 형태
    rootArr.push({root:'p2b2',item:'겹침',img:'꽃겹침.png',rootStr:'a',rootSet:'p2b2a',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2b2',item:'안겹침',img:'꽃안겹침.png',rootStr:'b',rootSet:'p2b2b',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2b2',item:'일체형',img:'꽃통.png',rootStr:'c',rootSet:'p2b2c',res:'n',question:'꽃잎의 모양을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level4 : 식물-꽃-가을-크다 : 꽃잎 형태
    rootArr.push({root:'p2c1',item:'겹침',img:'꽃겹침.png',rootStr:'a',rootSet:'p2c1a',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2c1',item:'안겹침',img:'꽃안겹침.png',rootStr:'b',rootSet:'p2c1b',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2c1',item:'일체형',img:'꽃통.png',rootStr:'c',rootSet:'p2c1c',res:'n',question:'꽃잎의 모양을 골라주세요.'});

    //level4 : 식물-꽃-가을-작다 : 꽃잎 형태
    rootArr.push({root:'p2c2',item:'겹침',img:'꽃겹침.png',rootStr:'a',rootSet:'p2c2a',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2c2',item:'안겹침',img:'꽃안겹침.png',rootStr:'b',rootSet:'p2c2b',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2c2',item:'일체형',img:'꽃통.png',rootStr:'c',rootSet:'p2c2c',res:'n',question:'꽃잎의 모양을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level4 : 식물-꽃-겨울-크다 : 꽃잎 형태
    rootArr.push({root:'p2d1',item:'겹침',img:'꽃겹침.png',rootStr:'a',rootSet:'p2d1a',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2d1',item:'안겹침',img:'꽃안겹침.png',rootStr:'b',rootSet:'p2d1b',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2d1',item:'일체형',img:'꽃통.png',rootStr:'c',rootSet:'p2d1c',res:'n',question:'꽃잎의 모양을 골라주세요.'});

    //level4 : 식물-꽃-겨울-작다 : 꽃잎 형태
    rootArr.push({root:'p2d2',item:'겹침',img:'꽃겹침.png',rootStr:'a',rootSet:'p2d2a',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2d2',item:'안겹침',img:'꽃안겹침.png',rootStr:'b',rootSet:'p2d2b',res:'n',question:'꽃잎의 모양을 골라주세요.'});
    rootArr.push({root:'p2d2',item:'일체형',img:'꽃통.png',rootStr:'c',rootSet:'p2d2c',res:'n',question:'꽃잎의 모양을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-봄-크다-겹침 : 색
    rootArr.push({root:'p2a1a',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2a1a1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1a',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2a1a2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1a',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2a1a3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1a',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2a1a4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1a',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2a1a5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1a',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2a1a6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-봄-크다-안겹침 : 색
    rootArr.push({root:'p2a1b',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2a1b1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1b',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2a1b2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1b',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2a1b3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1b',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2a1b4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1b',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2a1b5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1b',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2a1b6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-봄-크다-일체형 : 색
    rootArr.push({root:'p2a1c',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2a1c1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1c',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2a1c2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1c',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2a1c3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1c',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2a1c4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1c',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2a1c5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a1c',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2a1c6',res:'y',question:'꽃의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-봄-작다-겹침 : 색
    rootArr.push({root:'p2a2a',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2a2a1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2a',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2a2a2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2a',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2a2a3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2a',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2a2a4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2a',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2a2a5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2a',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2a2a6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-봄-작다-안겹침 : 색
    rootArr.push({root:'p2a2b',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2a2b1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2b',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2a2b2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2b',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2a2b3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2b',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2a2b4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2b',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2a2b5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2b',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2a2b6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-봄-작다-일체형 : 색
    rootArr.push({root:'p2a2c',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2a2c1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2c',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2a2c2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2c',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2a2c3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2c',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2a2c4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2c',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2a2c5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2a2c',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2a2c6',res:'y',question:'꽃의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-여름-크다-겹침 : 색
    rootArr.push({root:'p2b1a',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2b1a1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1a',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2b1a2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1a',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2b1a3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1a',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2b1a4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1a',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2b1a5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1a',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2b1a6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-여름-크다-안겹침 : 색
    rootArr.push({root:'p2b1b',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2b1b1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1b',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2b1b2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1b',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2b1b3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1b',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2b1b4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1b',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2b1b5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1b',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2b1b6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-여름-크다-일체형 : 색
    rootArr.push({root:'p2b1c',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2b1c1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1c',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2b1c2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1c',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2b1c3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1c',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2b1c4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1c',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2b1c5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b1c',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2b1c6',res:'y',question:'꽃의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-여름-작다-겹침 : 색
    rootArr.push({root:'p2b2a',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2b2a1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2a',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2b2a2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2a',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2b2a3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2a',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2b2a4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2a',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2b2a5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2a',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2b2a6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-여름-작다-안겹침 : 색
    rootArr.push({root:'p2b2b',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2b2b1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2b',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2b2b2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2b',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2b2b3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2b',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2b2b4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2b',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2b2b5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2b',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2b2b6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-여름-작다-일체형 : 색
    rootArr.push({root:'p2b2c',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2b2c1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2c',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2b2c2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2c',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2b2c3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2c',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2b2c4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2c',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2b2c5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2b2c',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2b2c6',res:'y',question:'꽃의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-가을-크다-겹침 : 색
    rootArr.push({root:'p2c1a',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2c1a1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1a',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2c1a2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1a',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2c1a3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1a',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2c1a4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1a',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2c1a5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1a',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2c1a6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-가을-크다-안겹침 : 색
    rootArr.push({root:'p2c1b',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2c1b1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1b',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2c1b2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1b',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2c1b3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1b',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2c1b4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1b',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2c1b5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1b',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2c1b6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-가을-크다-일체형 : 색
    rootArr.push({root:'p2c1c',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2c1c1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1c',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2c1c2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1c',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2c1c3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1c',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2c1c4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1c',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2c1c5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c1c',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2c1c6',res:'y',question:'꽃의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-가을-작다-겹침 : 색
    rootArr.push({root:'p2c2a',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2c2a1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2a',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2c2a2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2a',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2c2a3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2a',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2c2a4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2a',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2c2a5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2a',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2c2a6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-가을-작다-안겹침 : 색
    rootArr.push({root:'p2c2b',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2c2b1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2b',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2c2b2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2b',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2c2b3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2b',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2c2b4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2b',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2c2b5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2b',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2c2b6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-가을-작다-일체형 : 색
    rootArr.push({root:'p2c2c',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2c2c1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2c',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2c2c2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2c',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2c2c3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2c',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2c2c4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2c',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2c2c5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2c2c',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2c2c6',res:'y',question:'꽃의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-겨울-크다-겹침 : 색
    rootArr.push({root:'p2d1a',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2d1a1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1a',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2d1a2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1a',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2d1a3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1a',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2d1a4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1a',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2d1a5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1a',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2d1a6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-겨울-크다-안겹침 : 색
    rootArr.push({root:'p2d1b',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2d1b1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1b',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2d1b2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1b',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2d1b3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1b',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2d1b4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1b',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2d1b5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1b',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2d1b6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-겨울-크다-일체형 : 색
    rootArr.push({root:'p2d1c',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2d1c1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1c',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2d1c2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1c',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2d1c3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1c',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2d1c4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1c',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2d1c5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d1c',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2d1c6',res:'y',question:'꽃의 색을 골라주세요.'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-겨울-작다-겹침 : 색
    rootArr.push({root:'p2d2a',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2d2a1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2a',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2d2a2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2a',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2d2a3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2a',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2d2a4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2a',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2d2a5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2a',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2d2a6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-겨울-작다-안겹침 : 색
    rootArr.push({root:'p2d2b',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2d2b1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2b',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2d2b2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2b',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2d2b3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2b',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2d2b4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2b',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2d2b5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2b',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2d2b6',res:'y',question:'꽃의 색을 골라주세요.'});

    //level5 : 식물-꽃-겨울-작다-일체형 : 색
    rootArr.push({root:'p2d2c',item:'흰색',img:'꽃색흰색.png',rootStr:'1',rootSet:'p2d2c1',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2c',item:'빨강',img:'꽃색빨강.png',rootStr:'2',rootSet:'p2d2c2',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2c',item:'분홍',img:'꽃색분홍.png',rootStr:'3',rootSet:'p2d2c3',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2c',item:'보라',img:'꽃색보라.png',rootStr:'4',rootSet:'p2d2c4',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2c',item:'노랑',img:'꽃색노랑.png',rootStr:'5',rootSet:'p2d2c5',res:'y',question:'꽃의 색을 골라주세요.'});
    rootArr.push({root:'p2d2c',item:'섞임',img:'꽃색섞임.png',rootStr:'6',rootSet:'p2d2c6',res:'y',question:'꽃의 색을 골라주세요.'});

    // 꽃 분류 끝
}