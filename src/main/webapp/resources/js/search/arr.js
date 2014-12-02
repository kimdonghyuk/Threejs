/**
 * Created by PPG on 2014-11-28.
 */

// 배열 세팅
// 식물-나무 분류 완료
// 식물-꽃 분류 완료

function setArr(){

    // 대분류 : 검색 시작
    rootArr.push({root:'s',question:'식물',rootStr:'p',rootSet:'p',res:'n'});
    rootArr.push({root:'s',question:'동물',rootStr:'a',rootSet:'a',res:'n'});    // 미구현
    rootArr.push({root:'s',question:'곤충',rootStr:'b',rootSet:'b',res:'n'});    // 미구현

    // level1 : 식물 : 종류
    rootArr.push({root:'p',question:'나무',rootStr:'1',rootSet:'p1',res:'n'});
    rootArr.push({root:'p',question:'꽃',rootStr:'2',rootSet:'p2',res:'n'});
    rootArr.push({root:'p',question:'풀',rootStr:'3',rootSet:'p3',res:'n'});    // 미구현

    //--------------------------------------------------------------------------------------

    // 나무분류

    // level2 : 식물-나무 : 계절
    rootArr.push({root:'p1',question:'봄',rootStr:'a',rootSet:'p1a',res:'n'});
    rootArr.push({root:'p1',question:'여름',rootStr:'b',rootSet:'p1b',res:'n'});
    rootArr.push({root:'p1',question:'가을',rootStr:'c',rootSet:'p1c',res:'n'});
    rootArr.push({root:'p1',question:'겨울',rootStr:'d',rootSet:'p1d',res:'n'});

    //--------------------------------------------------------------------------------------

    // level3 : 식물-나무-봄 : 가지에 달린것
    rootArr.push({root:'p1a',question:'꽃',rootStr:'1',rootSet:'p1a1',res:'n'});
    rootArr.push({root:'p1a',question:'잎',rootStr:'2',rootSet:'p1a2',res:'n'});
    rootArr.push({root:'p1a',question:'열매',rootStr:'3',rootSet:'p1a3',res:'n'});

    // level3 : 식물-나무-여름 : 가지에 달린것
    rootArr.push({root:'p1b',question:'꽃',rootStr:'1',rootSet:'p1b1',res:'n'});
    rootArr.push({root:'p1b',question:'잎',rootStr:'2',rootSet:'p1b2',res:'n'});
    rootArr.push({root:'p1b',question:'열매',rootStr:'3',rootSet:'p1b3',res:'n'});

    // level3 : 식물-나무-가을 : 가지에 달린것
    rootArr.push({root:'p1c',question:'꽃',rootStr:'1',rootSet:'p1c1',res:'n'});
    rootArr.push({root:'p1c',question:'잎',rootStr:'2',rootSet:'p1c2',res:'n'});
    rootArr.push({root:'p1c',question:'열매',rootStr:'3',rootSet:'p1c3',res:'n'});

    // level3 : 식물-나무-겨울 : 가지에 달린것
    rootArr.push({root:'p1d',question:'꽃',rootStr:'1',rootSet:'p1d1',res:'n'});
    rootArr.push({root:'p1d',question:'잎',rootStr:'2',rootSet:'p1d2',res:'n'});
    rootArr.push({root:'p1d',question:'열매',rootStr:'3',rootSet:'p1d3',res:'n'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-봄-꽃 : 꽃의 색깔
    rootArr.push({root:'p1a1',question:'빨강',rootStr:'a',rootSet:'p1a1a',res:'n'});
    rootArr.push({root:'p1a1',question:'노랑',rootStr:'b',rootSet:'p1a1b',res:'n'});
    rootArr.push({root:'p1a1',question:'보라',rootStr:'c',rootSet:'p1a1c',res:'n'});
    rootArr.push({root:'p1a1',question:'흰색',rootStr:'d',rootSet:'p1a1d',res:'n'});
    rootArr.push({root:'p1a1',question:'분홍',rootStr:'e',rootSet:'p1a1e',res:'n'});

    // level4 : 식물-나무-봄-잎 : 잎의 모양
    rootArr.push({root:'p1a2',question:'바늘',rootStr:'a',rootSet:'p1a2a',res:'y'});
    rootArr.push({root:'p1a2',question:'타원',rootStr:'b',rootSet:'p1a2b',res:'y'});
    rootArr.push({root:'p1a2',question:'불규칙',rootStr:'c',rootSet:'p1a2c',res:'y'});

    // level4 : 식물-나무-봄-열매 : 열매의 크기
    rootArr.push({root:'p1a3',question:'쌀알',rootStr:'a',rootSet:'p1a3a',res:'n'});
    rootArr.push({root:'p1a3',question:'포도알',rootStr:'b',rootSet:'p1a3b',res:'n'});
    rootArr.push({root:'p1a3',question:'귤',rootStr:'c',rootSet:'p1a3c',res:'n'});
    rootArr.push({root:'p1a3',question:'사과',rootStr:'d',rootSet:'p1a3d',res:'n'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-여름-꽃 : 꽃의 색깔
    rootArr.push({root:'p1b1',question:'빨강',rootStr:'a',rootSet:'p1b1a',res:'n'});
    rootArr.push({root:'p1b1',question:'노랑',rootStr:'b',rootSet:'p1b1b',res:'n'});
    rootArr.push({root:'p1b1',question:'보라',rootStr:'c',rootSet:'p1b1c',res:'n'});
    rootArr.push({root:'p1b1',question:'흰색',rootStr:'d',rootSet:'p1b1d',res:'n'});
    rootArr.push({root:'p1b1',question:'분홍',rootStr:'e',rootSet:'p1b1e',res:'n'});

    // level4 : 식물-나무-여름-잎 : 잎의 모양
    rootArr.push({root:'p1b2',question:'바늘',rootStr:'a',rootSet:'p1b2a',res:'y'});
    rootArr.push({root:'p1b2',question:'타원',rootStr:'b',rootSet:'p1b2b',res:'y'});
    rootArr.push({root:'p1b2',question:'불규칙',rootStr:'c',rootSet:'p1b2c',res:'y'});

    // level4 : 식물-나무-여름-열매 : 열매의 크기
    rootArr.push({root:'p1b3',question:'쌀알',rootStr:'a',rootSet:'p1b3a',res:'n'});
    rootArr.push({root:'p1b3',question:'포도알',rootStr:'b',rootSet:'p1b3b',res:'n'});
    rootArr.push({root:'p1b3',question:'귤',rootStr:'c',rootSet:'p1b3c',res:'n'});
    rootArr.push({root:'p1b3',question:'사과',rootStr:'d',rootSet:'p1b3d',res:'n'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-가을-꽃 : 꽃의 색깔
    rootArr.push({root:'p1c1',question:'빨강',rootStr:'a',rootSet:'p1c1a',res:'n'});
    rootArr.push({root:'p1c1',question:'노랑',rootStr:'b',rootSet:'p1c1b',res:'n'});
    rootArr.push({root:'p1c1',question:'보라',rootStr:'c',rootSet:'p1c1c',res:'n'});
    rootArr.push({root:'p1c1',question:'흰색',rootStr:'d',rootSet:'p1c1d',res:'n'});
    rootArr.push({root:'p1c1',question:'분홍',rootStr:'e',rootSet:'p1c1e',res:'n'});

    // level4 : 식물-나무-가을-잎 : 잎의 모양
    rootArr.push({root:'p1c1',question:'바늘',rootStr:'a',rootSet:'p1c2a',res:'y'});
    rootArr.push({root:'p1c2',question:'타원',rootStr:'b',rootSet:'p1c2b',res:'y'});
    rootArr.push({root:'p1c2',question:'불규칙',rootStr:'c',rootSet:'p1c2c',res:'y'});

    // level4 : 식물-나무-가을-열매 : 열매의 크기
    rootArr.push({root:'p1c3',question:'쌀알',rootStr:'a',rootSet:'p1c3a',res:'n'});
    rootArr.push({root:'p1c3',question:'포도알',rootStr:'b',rootSet:'p1c3b',res:'n'});
    rootArr.push({root:'p1c3',question:'귤',rootStr:'c',rootSet:'p1c3c',res:'n'});
    rootArr.push({root:'p1c3',question:'사과',rootStr:'d',rootSet:'p1c3d',res:'n'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-겨울-꽃 : 꽃의 색깔
    rootArr.push({root:'p1d1',question:'빨강',rootStr:'a',rootSet:'p1d1a',res:'n'});
    rootArr.push({root:'p1d1',question:'노랑',rootStr:'b',rootSet:'p1d1b',res:'n'});
    rootArr.push({root:'p1d1',question:'보라',rootStr:'c',rootSet:'p1d1c',res:'n'});
    rootArr.push({root:'p1d1',question:'흰색',rootStr:'d',rootSet:'p1d1d',res:'n'});
    rootArr.push({root:'p1d1',question:'분홍',rootStr:'e',rootSet:'p1d1e',res:'n'});

    // level4 : 식물-나무-겨울-잎 : 잎의 모양
    rootArr.push({root:'p1d2',question:'바늘',rootStr:'a',rootSet:'p1d2a',res:'y'});
    rootArr.push({root:'p1d2',question:'타원',rootStr:'b',rootSet:'p1d2b',res:'y'});
    rootArr.push({root:'p1d2',question:'불규칙',rootStr:'c',rootSet:'p1d2c',res:'y'});

    // level4 : 식물-나무-겨울-열매 : 열매의 크기
    rootArr.push({root:'p1d3',question:'쌀알',rootStr:'a',rootSet:'p1d3a',res:'n'});
    rootArr.push({root:'p1d3',question:'포도알',rootStr:'b',rootSet:'p1d3b',res:'n'});
    rootArr.push({root:'p1d3',question:'귤',rootStr:'c',rootSet:'p1d3c',res:'n'});
    rootArr.push({root:'p1d3',question:'사과',rootStr:'d',rootSet:'p1d3d',res:'n'});

    // 나무-잎 분류 끝

    //--------------------------------------------------------------------------------------

    // level5 : 식물-나무-봄-꽃-빨강 : 꽃의 크기
    rootArr.push({root:'p1a1a',question:'크다',rootStr:'1',rootSet:'p1a1a1',res:'y'});
    rootArr.push({root:'p1a1a',question:'작다',rootStr:'2',rootSet:'p1a1a2',res:'y'});

    // level5 : 식물-나무-봄-꽃-노랑 : 꽃의 크기
    rootArr.push({root:'p1a1b',question:'크다',rootStr:'1',rootSet:'p1a1b1',res:'y'});
    rootArr.push({root:'p1a1b',question:'작다',rootStr:'2',rootSet:'p1a1b2',res:'y'});

    // level5 : 식물-나무-봄-꽃-보라 : 꽃의 크기
    rootArr.push({root:'p1a1c',question:'크다',rootStr:'1',rootSet:'p1a1c1',res:'y'});
    rootArr.push({root:'p1a1c',question:'작다',rootStr:'2',rootSet:'p1a1c2',res:'y'});

    // level5 : 식물-나무-봄-꽃-흰색 : 꽃의 크기
    rootArr.push({root:'p1a1d',question:'크다',rootStr:'1',rootSet:'p1a1d1',res:'y'});
    rootArr.push({root:'p1a1d',question:'작다',rootStr:'2',rootSet:'p1a1d2',res:'y'});

    // level5 : 식물-나무-봄-꽃-분홍 : 꽃의 크기
    rootArr.push({root:'p1a1e',question:'크다',rootStr:'1',rootSet:'p1a1e1',res:'y'});
    rootArr.push({root:'p1a1e',question:'작다',rootStr:'2',rootSet:'p1a1e2',res:'y'});

    // 나무-꽃 분류 끝

    //--------------------------------------------------------------------------------------

    // level5 : 식물-나무-여름-꽃-빨강 : 꽃의 크기
    rootArr.push({root:'p1b1a',question:'크다',rootStr:'1',rootSet:'p1b1a1',res:'y'});
    rootArr.push({root:'p1b1a',question:'작다',rootStr:'2',rootSet:'p1b1a2',res:'y'});

    // level5 : 식물-나무-여름-꽃-노랑 : 꽃의 크기
    rootArr.push({root:'p1b1b',question:'크다',rootStr:'1',rootSet:'p1b1b1',res:'y'});
    rootArr.push({root:'p1b1b',question:'작다',rootStr:'2',rootSet:'p1b1b2',res:'y'});

    // level5 : 식물-나무-여름-꽃-보라 : 꽃의 크기
    rootArr.push({root:'p1b1c',question:'크다',rootStr:'1',rootSet:'p1b1c1',res:'y'});
    rootArr.push({root:'p1b1c',question:'작다',rootStr:'2',rootSet:'p1b1c2',res:'y'});

    // level5 : 식물-나무-여름-꽃-흰색 : 꽃의 크기
    rootArr.push({root:'p1b1d',question:'크다',rootStr:'1',rootSet:'p1b1d1',res:'y'});
    rootArr.push({root:'p1b1d',question:'작다',rootStr:'2',rootSet:'p1b1d2',res:'y'});

    // level5 : 식물-나무-여름-꽃-분홍 : 꽃의 크기
    rootArr.push({root:'p1b1e',question:'크다',rootStr:'1',rootSet:'p1b1e1',res:'y'});
    rootArr.push({root:'p1b1e',question:'작다',rootStr:'2',rootSet:'p1b1e2',res:'y'});

    //--------------------------------------------------------------------------------------

    // level5 : 식물-나무-가을-꽃-빨강 : 꽃의 크기
    rootArr.push({root:'p1c1a',question:'크다',rootStr:'1',rootSet:'p1c1a1',res:'y'});
    rootArr.push({root:'p1c1a',question:'작다',rootStr:'2',rootSet:'p1c1a2',res:'y'});

    // level5 : 식물-나무-가을-꽃-노랑 : 꽃의 크기
    rootArr.push({root:'p1c1b',question:'크다',rootStr:'1',rootSet:'p1c1b1',res:'y'});
    rootArr.push({root:'p1c1b',question:'작다',rootStr:'2',rootSet:'p1c1b2',res:'y'});

    // level5 : 식물-나무-가을-꽃-보라 : 꽃의 크기
    rootArr.push({root:'p1c1c',question:'크다',rootStr:'1',rootSet:'p1c1c1',res:'y'});
    rootArr.push({root:'p1c1c',question:'작다',rootStr:'2',rootSet:'p1c1c2',res:'y'});

    // level5 : 식물-나무-가을-꽃-흰색 : 꽃의 크기
    rootArr.push({root:'p1c1d',question:'크다',rootStr:'1',rootSet:'p1c1d1',res:'y'});
    rootArr.push({root:'p1c1d',question:'작다',rootStr:'2',rootSet:'p1c1d2',res:'y'});

    // level5 : 식물-나무-가을-꽃-분홍 : 꽃의 크기
    rootArr.push({root:'p1c1e',question:'크다',rootStr:'1',rootSet:'p1c1e1',res:'y'});
    rootArr.push({root:'p1c1e',question:'작다',rootStr:'2',rootSet:'p1c1e2',res:'y'});

    //--------------------------------------------------------------------------------------

    // level5 : 식물-나무-겨울-꽃-빨강 : 꽃의 크기
    rootArr.push({root:'p1d1a',question:'크다',rootStr:'1',rootSet:'p1d1a1',res:'y'});
    rootArr.push({root:'p1d1a',question:'작다',rootStr:'2',rootSet:'p1d1a2',res:'y'});

    // level5 : 식물-나무-겨울-꽃-노랑 : 꽃의 크기
    rootArr.push({root:'p1d1b',question:'크다',rootStr:'1',rootSet:'p1d1b1',res:'y'});
    rootArr.push({root:'p1d1b',question:'작다',rootStr:'2',rootSet:'p1d1b2',res:'y'});

    // level5 : 식물-나무-겨울-꽃-보라 : 꽃의 크기
    rootArr.push({root:'p1d1c',question:'크다',rootStr:'1',rootSet:'p1d1c1',res:'y'});
    rootArr.push({root:'p1d1c',question:'작다',rootStr:'2',rootSet:'p1d1c2',res:'y'});

    // level5 : 식물-나무-겨울-꽃-흰색 : 꽃의 크기
    rootArr.push({root:'p1d1d',question:'크다',rootStr:'1',rootSet:'p1d1d1',res:'y'});
    rootArr.push({root:'p1d1d',question:'작다',rootStr:'2',rootSet:'p1d1d2',res:'y'});

    // level5 : 식물-나무-겨울-꽃-분홍 : 꽃의 크기
    rootArr.push({root:'p1d1e',question:'크다',rootStr:'1',rootSet:'p1d1e1',res:'y'});
    rootArr.push({root:'p1d1e',question:'작다',rootStr:'2',rootSet:'p1d1e2',res:'y'});
    
    // 나무-꽃 분류 끝

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-봄-열매-쌀알 : 열매의 색깔
    rootArr.push({root:'p1a3a',question:'노랑',rootStr:'1',rootSet:'p1a3a1',res:'y'});
    rootArr.push({root:'p1a3a',question:'주황',rootStr:'2',rootSet:'p1a3a2',res:'y'});
    rootArr.push({root:'p1a3a',question:'갈색',rootStr:'3',rootSet:'p1a3a3',res:'y'});
    rootArr.push({root:'p1a3a',question:'초록',rootStr:'4',rootSet:'p1a3a4',res:'y'});
    rootArr.push({root:'p1a3a',question:'빨강',rootStr:'5',rootSet:'p1a3a5',res:'y'});
    rootArr.push({root:'p1a3a',question:'보라',rootStr:'6',rootSet:'p1a3a6',res:'y'});

    // level4 : 식물-나무-봄-열매-포도알 : 열매의 색깔
    rootArr.push({root:'p1a3b',question:'노랑',rootStr:'1',rootSet:'p1a3b1',res:'y'});
    rootArr.push({root:'p1a3b',question:'주황',rootStr:'2',rootSet:'p1a3b2',res:'y'});
    rootArr.push({root:'p1a3b',question:'갈색',rootStr:'3',rootSet:'p1a3b3',res:'y'});
    rootArr.push({root:'p1a3b',question:'초록',rootStr:'4',rootSet:'p1a3b4',res:'y'});
    rootArr.push({root:'p1a3b',question:'빨강',rootStr:'5',rootSet:'p1a3b5',res:'y'});
    rootArr.push({root:'p1a3b',question:'보라',rootStr:'6',rootSet:'p1a3b6',res:'y'});

    // level4 : 식물-나무-봄-열매-귤 : 열매의 색깔
    rootArr.push({root:'p1a3c',question:'노랑',rootStr:'1',rootSet:'p1a3c1',res:'y'});
    rootArr.push({root:'p1a3c',question:'주황',rootStr:'2',rootSet:'p1a3c2',res:'y'});
    rootArr.push({root:'p1a3c',question:'갈색',rootStr:'3',rootSet:'p1a3c3',res:'y'});
    rootArr.push({root:'p1a3c',question:'초록',rootStr:'4',rootSet:'p1a3c4',res:'y'});
    rootArr.push({root:'p1a3c',question:'빨강',rootStr:'5',rootSet:'p1a3c5',res:'y'});
    rootArr.push({root:'p1a3c',question:'보라',rootStr:'6',rootSet:'p1a3c6',res:'y'});

    // level4 : 식물-나무-봄-열매-사과 : 열매의 색깔
    rootArr.push({root:'p1a3d',question:'노랑',rootStr:'1',rootSet:'p1a3d1',res:'y'});
    rootArr.push({root:'p1a3d',question:'주황',rootStr:'2',rootSet:'p1a3d2',res:'y'});
    rootArr.push({root:'p1a3d',question:'갈색',rootStr:'3',rootSet:'p1a3d3',res:'y'});
    rootArr.push({root:'p1a3d',question:'초록',rootStr:'4',rootSet:'p1a3d4',res:'y'});
    rootArr.push({root:'p1a3d',question:'빨강',rootStr:'5',rootSet:'p1a3d5',res:'y'});
    rootArr.push({root:'p1a3d',question:'보라',rootStr:'6',rootSet:'p1a3d6',res:'y'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-여름-열매-쌀알 : 열매의 색깔
    rootArr.push({root:'p1b3a',question:'노랑',rootStr:'1',rootSet:'p1b3a1',res:'y'});
    rootArr.push({root:'p1b3a',question:'주황',rootStr:'2',rootSet:'p1b3a2',res:'y'});
    rootArr.push({root:'p1b3a',question:'갈색',rootStr:'3',rootSet:'p1b3a3',res:'y'});
    rootArr.push({root:'p1b3a',question:'초록',rootStr:'4',rootSet:'p1b3a4',res:'y'});
    rootArr.push({root:'p1b3a',question:'빨강',rootStr:'5',rootSet:'p1b3a5',res:'y'});
    rootArr.push({root:'p1b3a',question:'보라',rootStr:'6',rootSet:'p1b3a6',res:'y'});

    // level4 : 식물-나무-여름-열매-포도알 : 열매의 색깔
    rootArr.push({root:'p1b3b',question:'노랑',rootStr:'1',rootSet:'p1b3b1',res:'y'});
    rootArr.push({root:'p1b3b',question:'주황',rootStr:'2',rootSet:'p1b3b2',res:'y'});
    rootArr.push({root:'p1b3b',question:'갈색',rootStr:'3',rootSet:'p1b3b3',res:'y'});
    rootArr.push({root:'p1b3b',question:'초록',rootStr:'4',rootSet:'p1b3b4',res:'y'});
    rootArr.push({root:'p1b3b',question:'빨강',rootStr:'5',rootSet:'p1b3b5',res:'y'});
    rootArr.push({root:'p1b3b',question:'보라',rootStr:'6',rootSet:'p1b3b6',res:'y'});

    // level4 : 식물-나무-여름-열매-귤 : 열매의 색깔
    rootArr.push({root:'p1b3c',question:'노랑',rootStr:'1',rootSet:'p1b3c1',res:'y'});
    rootArr.push({root:'p1b3c',question:'주황',rootStr:'2',rootSet:'p1b3c2',res:'y'});
    rootArr.push({root:'p1b3c',question:'갈색',rootStr:'3',rootSet:'p1b3c3',res:'y'});
    rootArr.push({root:'p1b3c',question:'초록',rootStr:'4',rootSet:'p1b3c4',res:'y'});
    rootArr.push({root:'p1b3c',question:'빨강',rootStr:'5',rootSet:'p1b3c5',res:'y'});
    rootArr.push({root:'p1b3c',question:'보라',rootStr:'6',rootSet:'p1b3c6',res:'y'});

    // level4 : 식물-나무-여름-열매-사과 : 열매의 색깔
    rootArr.push({root:'p1b3d',question:'노랑',rootStr:'1',rootSet:'p1b3d1',res:'y'});
    rootArr.push({root:'p1b3d',question:'주황',rootStr:'2',rootSet:'p1b3d2',res:'y'});
    rootArr.push({root:'p1b3d',question:'갈색',rootStr:'3',rootSet:'p1b3d3',res:'y'});
    rootArr.push({root:'p1b3d',question:'초록',rootStr:'4',rootSet:'p1b3d4',res:'y'});
    rootArr.push({root:'p1b3d',question:'빨강',rootStr:'5',rootSet:'p1b3d5',res:'y'});
    rootArr.push({root:'p1b3d',question:'보라',rootStr:'6',rootSet:'p1b3d6',res:'y'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-가을-열매-쌀알 : 열매의 색깔
    rootArr.push({root:'p1c3a',question:'노랑',rootStr:'1',rootSet:'p1c3a1',res:'y'});
    rootArr.push({root:'p1c3a',question:'주황',rootStr:'2',rootSet:'p1c3a2',res:'y'});
    rootArr.push({root:'p1c3a',question:'갈색',rootStr:'3',rootSet:'p1c3a3',res:'y'});
    rootArr.push({root:'p1c3a',question:'초록',rootStr:'4',rootSet:'p1c3a4',res:'y'});
    rootArr.push({root:'p1c3a',question:'빨강',rootStr:'5',rootSet:'p1c3a5',res:'y'});
    rootArr.push({root:'p1c3a',question:'보라',rootStr:'6',rootSet:'p1c3a6',res:'y'});

    // level4 : 식물-나무-가을-열매-포도알 : 열매의 색깔
    rootArr.push({root:'p1c3b',question:'노랑',rootStr:'1',rootSet:'p1c3b1',res:'y'});
    rootArr.push({root:'p1c3b',question:'주황',rootStr:'2',rootSet:'p1c3b2',res:'y'});
    rootArr.push({root:'p1c3b',question:'갈색',rootStr:'3',rootSet:'p1c3b3',res:'y'});
    rootArr.push({root:'p1c3b',question:'초록',rootStr:'4',rootSet:'p1c3b4',res:'y'});
    rootArr.push({root:'p1c3b',question:'빨강',rootStr:'5',rootSet:'p1c3b5',res:'y'});
    rootArr.push({root:'p1c3b',question:'보라',rootStr:'6',rootSet:'p1c3b6',res:'y'});

    // level4 : 식물-나무-가을-열매-귤 : 열매의 색깔
    rootArr.push({root:'p1c3c',question:'노랑',rootStr:'1',rootSet:'p1c3c1',res:'y'});
    rootArr.push({root:'p1c3c',question:'주황',rootStr:'2',rootSet:'p1c3c2',res:'y'});
    rootArr.push({root:'p1c3c',question:'갈색',rootStr:'3',rootSet:'p1c3c3',res:'y'});
    rootArr.push({root:'p1c3c',question:'초록',rootStr:'4',rootSet:'p1c3c4',res:'y'});
    rootArr.push({root:'p1c3c',question:'빨강',rootStr:'5',rootSet:'p1c3c5',res:'y'});
    rootArr.push({root:'p1c3c',question:'보라',rootStr:'6',rootSet:'p1c3c6',res:'y'});

    // level4 : 식물-나무-가을-열매-사과 : 열매의 색깔
    rootArr.push({root:'p1c3d',question:'노랑',rootStr:'1',rootSet:'p1c3d1',res:'y'});
    rootArr.push({root:'p1c3d',question:'주황',rootStr:'2',rootSet:'p1c3d2',res:'y'});
    rootArr.push({root:'p1c3d',question:'갈색',rootStr:'3',rootSet:'p1c3d3',res:'y'});
    rootArr.push({root:'p1c3d',question:'초록',rootStr:'4',rootSet:'p1c3d4',res:'y'});
    rootArr.push({root:'p1c3d',question:'빨강',rootStr:'5',rootSet:'p1c3d5',res:'y'});
    rootArr.push({root:'p1c3d',question:'보라',rootStr:'6',rootSet:'p1c3d6',res:'y'});

    //--------------------------------------------------------------------------------------

    // level4 : 식물-나무-겨울-열매-쌀알 : 열매의 색깔
    rootArr.push({root:'p1d3a',question:'노랑',rootStr:'1',rootSet:'p1d3a1',res:'y'});
    rootArr.push({root:'p1d3a',question:'주황',rootStr:'2',rootSet:'p1d3a2',res:'y'});
    rootArr.push({root:'p1d3a',question:'갈색',rootStr:'3',rootSet:'p1d3a3',res:'y'});
    rootArr.push({root:'p1d3a',question:'초록',rootStr:'4',rootSet:'p1d3a4',res:'y'});
    rootArr.push({root:'p1d3a',question:'빨강',rootStr:'5',rootSet:'p1d3a5',res:'y'});
    rootArr.push({root:'p1d3a',question:'보라',rootStr:'6',rootSet:'p1d3a6',res:'y'});

    // level4 : 식물-나무-겨울-열매-포도알 : 열매의 색깔
    rootArr.push({root:'p1d3b',question:'노랑',rootStr:'1',rootSet:'p1d3b1',res:'y'});
    rootArr.push({root:'p1d3b',question:'주황',rootStr:'2',rootSet:'p1d3b2',res:'y'});
    rootArr.push({root:'p1d3b',question:'갈색',rootStr:'3',rootSet:'p1d3b3',res:'y'});
    rootArr.push({root:'p1d3b',question:'초록',rootStr:'4',rootSet:'p1d3b4',res:'y'});
    rootArr.push({root:'p1d3b',question:'빨강',rootStr:'5',rootSet:'p1d3b5',res:'y'});
    rootArr.push({root:'p1d3b',question:'보라',rootStr:'6',rootSet:'p1d3b6',res:'y'});

    // level4 : 식물-나무-겨울-열매-귤 : 열매의 색깔
    rootArr.push({root:'p1d3c',question:'노랑',rootStr:'1',rootSet:'p1d3c1',res:'y'});
    rootArr.push({root:'p1d3c',question:'주황',rootStr:'2',rootSet:'p1d3c2',res:'y'});
    rootArr.push({root:'p1d3c',question:'갈색',rootStr:'3',rootSet:'p1d3c3',res:'y'});
    rootArr.push({root:'p1d3c',question:'초록',rootStr:'4',rootSet:'p1d3c4',res:'y'});
    rootArr.push({root:'p1d3c',question:'빨강',rootStr:'5',rootSet:'p1d3c5',res:'y'});
    rootArr.push({root:'p1d3c',question:'보라',rootStr:'6',rootSet:'p1d3c6',res:'y'});

    // level4 : 식물-나무-겨울-열매-사과 : 열매의 색깔
    rootArr.push({root:'p1d3d',question:'노랑',rootStr:'1',rootSet:'p1d3d1',res:'y'});
    rootArr.push({root:'p1d3d',question:'주황',rootStr:'2',rootSet:'p1d3d2',res:'y'});
    rootArr.push({root:'p1d3d',question:'갈색',rootStr:'3',rootSet:'p1d3d3',res:'y'});
    rootArr.push({root:'p1d3d',question:'초록',rootStr:'4',rootSet:'p1d3d4',res:'y'});
    rootArr.push({root:'p1d3d',question:'빨강',rootStr:'5',rootSet:'p1d3d5',res:'y'});
    rootArr.push({root:'p1d3d',question:'보라',rootStr:'6',rootSet:'p1d3d6',res:'y'});

    // 나무-열매 분류 끝
    // 나무분류 완료

    //--------------------------------------------------------------------------------------

    // 꽃 분류

    // level2 : 식물-꽃 : 계절
    rootArr.push({root:'p2',question:'봄',rootStr:'a',rootSet:'p2a',res:'n'});
    rootArr.push({root:'p2',question:'여름',rootStr:'b',rootSet:'p2b',res:'n'});
    rootArr.push({root:'p2',question:'가을',rootStr:'c',rootSet:'p2c',res:'n'});
    rootArr.push({root:'p2',question:'겨울',rootStr:'d',rootSet:'p2d',res:'n'});

    //--------------------------------------------------------------------------------------

    // level3 : 식물-꽃-봄 : 크기
    rootArr.push({root:'p2a',question:'크다',rootStr:'1',rootSet:'p2a1',res:'n'});
    rootArr.push({root:'p2a',question:'작다',rootStr:'2',rootSet:'p2a2',res:'n'});

    // level3 : 식물-꽃-여름 : 크기
    rootArr.push({root:'p2b',question:'크다',rootStr:'1',rootSet:'p2b1',res:'n'});
    rootArr.push({root:'p2b',question:'작다',rootStr:'2',rootSet:'p2b2',res:'n'});

    // level3 : 식물-꽃-가을 : 크기
    rootArr.push({root:'p2c',question:'크다',rootStr:'1',rootSet:'p2c1',res:'n'});
    rootArr.push({root:'p2c',question:'작다',rootStr:'2',rootSet:'p2c2',res:'n'});

    // level3 : 식물-꽃-겨울 : 크기
    rootArr.push({root:'p2d',question:'크다',rootStr:'1',rootSet:'p2d1',res:'n'});
    rootArr.push({root:'p2d',question:'작다',rootStr:'2',rootSet:'p2d2',res:'n'});

    //--------------------------------------------------------------------------------------

    //level4 : 식물-꽃-봄-크다 : 꽃잎 형태
    rootArr.push({root:'p2a1',question:'겹침',rootStr:'a',rootSet:'p2a1a',res:'n'});
    rootArr.push({root:'p2a1',question:'안겹침',rootStr:'b',rootSet:'p2a1b',res:'n'});
    rootArr.push({root:'p2a1',question:'일체형',rootStr:'c',rootSet:'p2a1c',res:'n'});

    //level4 : 식물-꽃-봄-작다 : 꽃잎 형태
    rootArr.push({root:'p2a2',question:'겹침',rootStr:'a',rootSet:'p2a2a',res:'n'});
    rootArr.push({root:'p2a2',question:'안겹침',rootStr:'b',rootSet:'p2a2b',res:'n'});
    rootArr.push({root:'p2a2',question:'일체형',rootStr:'c',rootSet:'p2a2c',res:'n'});

    //--------------------------------------------------------------------------------------

    //level4 : 식물-꽃-여름-크다 : 꽃잎 형태
    rootArr.push({root:'p2b1',question:'겹침',rootStr:'a',rootSet:'p2b1a',res:'n'});
    rootArr.push({root:'p2b1',question:'안겹침',rootStr:'b',rootSet:'p2b1b',res:'n'});
    rootArr.push({root:'p2b1',question:'일체형',rootStr:'c',rootSet:'p2b1c',res:'n'});

    //level4 : 식물-꽃-여름-작다 : 꽃잎 형태
    rootArr.push({root:'p2b2',question:'겹침',rootStr:'a',rootSet:'p2b2a',res:'n'});
    rootArr.push({root:'p2b2',question:'안겹침',rootStr:'b',rootSet:'p2b2b',res:'n'});
    rootArr.push({root:'p2b2',question:'일체형',rootStr:'c',rootSet:'p2b2c',res:'n'});

    //--------------------------------------------------------------------------------------

    //level4 : 식물-꽃-가을-크다 : 꽃잎 형태
    rootArr.push({root:'p2c1',question:'겹침',rootStr:'a',rootSet:'p2c1a',res:'n'});
    rootArr.push({root:'p2c1',question:'안겹침',rootStr:'b',rootSet:'p2c1b',res:'n'});
    rootArr.push({root:'p2c1',question:'일체형',rootStr:'c',rootSet:'p2c1c',res:'n'});

    //level4 : 식물-꽃-가을-작다 : 꽃잎 형태
    rootArr.push({root:'p2c2',question:'겹침',rootStr:'a',rootSet:'p2c2a',res:'n'});
    rootArr.push({root:'p2c2',question:'안겹침',rootStr:'b',rootSet:'p2c2b',res:'n'});
    rootArr.push({root:'p2c2',question:'일체형',rootStr:'c',rootSet:'p2c2c',res:'n'});

    //--------------------------------------------------------------------------------------

    //level4 : 식물-꽃-겨울-크다 : 꽃잎 형태
    rootArr.push({root:'p2d1',question:'겹침',rootStr:'a',rootSet:'p2d1a',res:'n'});
    rootArr.push({root:'p2d1',question:'안겹침',rootStr:'b',rootSet:'p2d1b',res:'n'});
    rootArr.push({root:'p2d1',question:'일체형',rootStr:'c',rootSet:'p2d1c',res:'n'});

    //level4 : 식물-꽃-겨울-작다 : 꽃잎 형태
    rootArr.push({root:'p2d2',question:'겹침',rootStr:'a',rootSet:'p2d2a',res:'n'});
    rootArr.push({root:'p2d2',question:'안겹침',rootStr:'b',rootSet:'p2d2b',res:'n'});
    rootArr.push({root:'p2d2',question:'일체형',rootStr:'c',rootSet:'p2d2c',res:'n'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-봄-크다-겹침 : 색
    rootArr.push({root:'p2a1a',question:'흰색',rootStr:'1',rootSet:'p2a1a1',res:'y'});
    rootArr.push({root:'p2a1a',question:'빨강',rootStr:'2',rootSet:'p2a1a2',res:'y'});
    rootArr.push({root:'p2a1a',question:'파랑',rootStr:'3',rootSet:'p2a1a3',res:'y'});
    rootArr.push({root:'p2a1a',question:'보라',rootStr:'4',rootSet:'p2a1a4',res:'y'});
    rootArr.push({root:'p2a1a',question:'노랑',rootStr:'5',rootSet:'p2a1a5',res:'y'});
    rootArr.push({root:'p2a1a',question:'기타',rootStr:'6',rootSet:'p2a1a6',res:'y'});

    //level5 : 식물-꽃-봄-크다-안겹침 : 색
    rootArr.push({root:'p2a1b',question:'흰색',rootStr:'1',rootSet:'p2a1b1',res:'y'});
    rootArr.push({root:'p2a1b',question:'빨강',rootStr:'2',rootSet:'p2a1b2',res:'y'});
    rootArr.push({root:'p2a1b',question:'파랑',rootStr:'3',rootSet:'p2a1b3',res:'y'});
    rootArr.push({root:'p2a1b',question:'보라',rootStr:'4',rootSet:'p2a1b4',res:'y'});
    rootArr.push({root:'p2a1b',question:'노랑',rootStr:'5',rootSet:'p2a1b5',res:'y'});
    rootArr.push({root:'p2a1b',question:'기타',rootStr:'6',rootSet:'p2a1b6',res:'y'});

    //level5 : 식물-꽃-봄-크다-일체형 : 색
    rootArr.push({root:'p2a1c',question:'흰색',rootStr:'1',rootSet:'p2a1c1',res:'y'});
    rootArr.push({root:'p2a1c',question:'빨강',rootStr:'2',rootSet:'p2a1c2',res:'y'});
    rootArr.push({root:'p2a1c',question:'파랑',rootStr:'3',rootSet:'p2a1c3',res:'y'});
    rootArr.push({root:'p2a1c',question:'보라',rootStr:'4',rootSet:'p2a1c4',res:'y'});
    rootArr.push({root:'p2a1c',question:'노랑',rootStr:'5',rootSet:'p2a1c5',res:'y'});
    rootArr.push({root:'p2a1c',question:'기타',rootStr:'6',rootSet:'p2a1c6',res:'y'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-봄-작다-겹침 : 색
    rootArr.push({root:'p2a2a',question:'흰색',rootStr:'1',rootSet:'p2a2a1',res:'y'});
    rootArr.push({root:'p2a2a',question:'빨강',rootStr:'2',rootSet:'p2a2a2',res:'y'});
    rootArr.push({root:'p2a2a',question:'파랑',rootStr:'3',rootSet:'p2a2a3',res:'y'});
    rootArr.push({root:'p2a2a',question:'보라',rootStr:'4',rootSet:'p2a2a4',res:'y'});
    rootArr.push({root:'p2a2a',question:'노랑',rootStr:'5',rootSet:'p2a2a5',res:'y'});
    rootArr.push({root:'p2a2a',question:'기타',rootStr:'6',rootSet:'p2a2a6',res:'y'});

    //level5 : 식물-꽃-봄-작다-안겹침 : 색
    rootArr.push({root:'p2a2b',question:'흰색',rootStr:'1',rootSet:'p2a2b1',res:'y'});
    rootArr.push({root:'p2a2b',question:'빨강',rootStr:'2',rootSet:'p2a2b2',res:'y'});
    rootArr.push({root:'p2a2b',question:'파랑',rootStr:'3',rootSet:'p2a2b3',res:'y'});
    rootArr.push({root:'p2a2b',question:'보라',rootStr:'4',rootSet:'p2a2b4',res:'y'});
    rootArr.push({root:'p2a2b',question:'노랑',rootStr:'5',rootSet:'p2a2b5',res:'y'});
    rootArr.push({root:'p2a2b',question:'기타',rootStr:'6',rootSet:'p2a2b6',res:'y'});

    //level5 : 식물-꽃-봄-작다-일체형 : 색
    rootArr.push({root:'p2a2c',question:'흰색',rootStr:'1',rootSet:'p2a2c1',res:'y'});
    rootArr.push({root:'p2a2c',question:'빨강',rootStr:'2',rootSet:'p2a2c2',res:'y'});
    rootArr.push({root:'p2a2c',question:'파랑',rootStr:'3',rootSet:'p2a2c3',res:'y'});
    rootArr.push({root:'p2a2c',question:'보라',rootStr:'4',rootSet:'p2a2c4',res:'y'});
    rootArr.push({root:'p2a2c',question:'노랑',rootStr:'5',rootSet:'p2a2c5',res:'y'});
    rootArr.push({root:'p2a2c',question:'기타',rootStr:'6',rootSet:'p2a2c6',res:'y'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-여름-크다-겹침 : 색
    rootArr.push({root:'p2b1a',question:'흰색',rootStr:'1',rootSet:'p2b1a1',res:'y'});
    rootArr.push({root:'p2b1a',question:'빨강',rootStr:'2',rootSet:'p2b1a2',res:'y'});
    rootArr.push({root:'p2b1a',question:'파랑',rootStr:'3',rootSet:'p2b1a3',res:'y'});
    rootArr.push({root:'p2b1a',question:'보라',rootStr:'4',rootSet:'p2b1a4',res:'y'});
    rootArr.push({root:'p2b1a',question:'노랑',rootStr:'5',rootSet:'p2b1a5',res:'y'});
    rootArr.push({root:'p2b1a',question:'기타',rootStr:'6',rootSet:'p2b1a6',res:'y'});

    //level5 : 식물-꽃-여름-크다-안겹침 : 색
    rootArr.push({root:'p2b1b',question:'흰색',rootStr:'1',rootSet:'p2b1b1',res:'y'});
    rootArr.push({root:'p2b1b',question:'빨강',rootStr:'2',rootSet:'p2b1b2',res:'y'});
    rootArr.push({root:'p2b1b',question:'파랑',rootStr:'3',rootSet:'p2b1b3',res:'y'});
    rootArr.push({root:'p2b1b',question:'보라',rootStr:'4',rootSet:'p2b1b4',res:'y'});
    rootArr.push({root:'p2b1b',question:'노랑',rootStr:'5',rootSet:'p2b1b5',res:'y'});
    rootArr.push({root:'p2b1b',question:'기타',rootStr:'6',rootSet:'p2b1b6',res:'y'});

    //level5 : 식물-꽃-여름-크다-일체형 : 색
    rootArr.push({root:'p2b1c',question:'흰색',rootStr:'1',rootSet:'p2b1c1',res:'y'});
    rootArr.push({root:'p2b1c',question:'빨강',rootStr:'2',rootSet:'p2b1c2',res:'y'});
    rootArr.push({root:'p2b1c',question:'파랑',rootStr:'3',rootSet:'p2b1c3',res:'y'});
    rootArr.push({root:'p2b1c',question:'보라',rootStr:'4',rootSet:'p2b1c4',res:'y'});
    rootArr.push({root:'p2b1c',question:'노랑',rootStr:'5',rootSet:'p2b1c5',res:'y'});
    rootArr.push({root:'p2b1c',question:'기타',rootStr:'6',rootSet:'p2b1c6',res:'y'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-여름-작다-겹침 : 색
    rootArr.push({root:'p2b2a',question:'흰색',rootStr:'1',rootSet:'p2b2a1',res:'y'});
    rootArr.push({root:'p2b2a',question:'빨강',rootStr:'2',rootSet:'p2b2a2',res:'y'});
    rootArr.push({root:'p2b2a',question:'파랑',rootStr:'3',rootSet:'p2b2a3',res:'y'});
    rootArr.push({root:'p2b2a',question:'보라',rootStr:'4',rootSet:'p2b2a4',res:'y'});
    rootArr.push({root:'p2b2a',question:'노랑',rootStr:'5',rootSet:'p2b2a5',res:'y'});
    rootArr.push({root:'p2b2a',question:'기타',rootStr:'6',rootSet:'p2b2a6',res:'y'});

    //level5 : 식물-꽃-여름-작다-안겹침 : 색
    rootArr.push({root:'p2b2b',question:'흰색',rootStr:'1',rootSet:'p2b2b1',res:'y'});
    rootArr.push({root:'p2b2b',question:'빨강',rootStr:'2',rootSet:'p2b2b2',res:'y'});
    rootArr.push({root:'p2b2b',question:'파랑',rootStr:'3',rootSet:'p2b2b3',res:'y'});
    rootArr.push({root:'p2b2b',question:'보라',rootStr:'4',rootSet:'p2b2b4',res:'y'});
    rootArr.push({root:'p2b2b',question:'노랑',rootStr:'5',rootSet:'p2b2b5',res:'y'});
    rootArr.push({root:'p2b2b',question:'기타',rootStr:'6',rootSet:'p2b2b6',res:'y'});

    //level5 : 식물-꽃-여름-작다-일체형 : 색
    rootArr.push({root:'p2b2c',question:'흰색',rootStr:'1',rootSet:'p2b2c1',res:'y'});
    rootArr.push({root:'p2b2c',question:'빨강',rootStr:'2',rootSet:'p2b2c2',res:'y'});
    rootArr.push({root:'p2b2c',question:'파랑',rootStr:'3',rootSet:'p2b2c3',res:'y'});
    rootArr.push({root:'p2b2c',question:'보라',rootStr:'4',rootSet:'p2b2c4',res:'y'});
    rootArr.push({root:'p2b2c',question:'노랑',rootStr:'5',rootSet:'p2b2c5',res:'y'});
    rootArr.push({root:'p2b2c',question:'기타',rootStr:'6',rootSet:'p2b2c6',res:'y'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-가을-크다-겹침 : 색
    rootArr.push({root:'p2c1a',question:'흰색',rootStr:'1',rootSet:'p2c1a1',res:'y'});
    rootArr.push({root:'p2c1a',question:'빨강',rootStr:'2',rootSet:'p2c1a2',res:'y'});
    rootArr.push({root:'p2c1a',question:'파랑',rootStr:'3',rootSet:'p2c1a3',res:'y'});
    rootArr.push({root:'p2c1a',question:'보라',rootStr:'4',rootSet:'p2c1a4',res:'y'});
    rootArr.push({root:'p2c1a',question:'노랑',rootStr:'5',rootSet:'p2c1a5',res:'y'});
    rootArr.push({root:'p2c1a',question:'기타',rootStr:'6',rootSet:'p2c1a6',res:'y'});

    //level5 : 식물-꽃-가을-크다-안겹침 : 색
    rootArr.push({root:'p2c1b',question:'흰색',rootStr:'1',rootSet:'p2c1b1',res:'y'});
    rootArr.push({root:'p2c1b',question:'빨강',rootStr:'2',rootSet:'p2c1b2',res:'y'});
    rootArr.push({root:'p2c1b',question:'파랑',rootStr:'3',rootSet:'p2c1b3',res:'y'});
    rootArr.push({root:'p2c1b',question:'보라',rootStr:'4',rootSet:'p2c1b4',res:'y'});
    rootArr.push({root:'p2c1b',question:'노랑',rootStr:'5',rootSet:'p2c1b5',res:'y'});
    rootArr.push({root:'p2c1b',question:'기타',rootStr:'6',rootSet:'p2c1b6',res:'y'});

    //level5 : 식물-꽃-가을-크다-일체형 : 색
    rootArr.push({root:'p2c1c',question:'흰색',rootStr:'1',rootSet:'p2c1c1',res:'y'});
    rootArr.push({root:'p2c1c',question:'빨강',rootStr:'2',rootSet:'p2c1c2',res:'y'});
    rootArr.push({root:'p2c1c',question:'파랑',rootStr:'3',rootSet:'p2c1c3',res:'y'});
    rootArr.push({root:'p2c1c',question:'보라',rootStr:'4',rootSet:'p2c1c4',res:'y'});
    rootArr.push({root:'p2c1c',question:'노랑',rootStr:'5',rootSet:'p2c1c5',res:'y'});
    rootArr.push({root:'p2c1c',question:'기타',rootStr:'6',rootSet:'p2c1c6',res:'y'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-가을-작다-겹침 : 색
    rootArr.push({root:'p2c2a',question:'흰색',rootStr:'1',rootSet:'p2c2a1',res:'y'});
    rootArr.push({root:'p2c2a',question:'빨강',rootStr:'2',rootSet:'p2c2a2',res:'y'});
    rootArr.push({root:'p2c2a',question:'파랑',rootStr:'3',rootSet:'p2c2a3',res:'y'});
    rootArr.push({root:'p2c2a',question:'보라',rootStr:'4',rootSet:'p2c2a4',res:'y'});
    rootArr.push({root:'p2c2a',question:'노랑',rootStr:'5',rootSet:'p2c2a5',res:'y'});
    rootArr.push({root:'p2c2a',question:'기타',rootStr:'6',rootSet:'p2c2a6',res:'y'});

    //level5 : 식물-꽃-가을-작다-안겹침 : 색
    rootArr.push({root:'p2c2b',question:'흰색',rootStr:'1',rootSet:'p2c2b1',res:'y'});
    rootArr.push({root:'p2c2b',question:'빨강',rootStr:'2',rootSet:'p2c2b2',res:'y'});
    rootArr.push({root:'p2c2b',question:'파랑',rootStr:'3',rootSet:'p2c2b3',res:'y'});
    rootArr.push({root:'p2c2b',question:'보라',rootStr:'4',rootSet:'p2c2b4',res:'y'});
    rootArr.push({root:'p2c2b',question:'노랑',rootStr:'5',rootSet:'p2c2b5',res:'y'});
    rootArr.push({root:'p2c2b',question:'기타',rootStr:'6',rootSet:'p2c2b6',res:'y'});

    //level5 : 식물-꽃-가을-작다-일체형 : 색
    rootArr.push({root:'p2c2c',question:'흰색',rootStr:'1',rootSet:'p2c2c1',res:'y'});
    rootArr.push({root:'p2c2c',question:'빨강',rootStr:'2',rootSet:'p2c2c2',res:'y'});
    rootArr.push({root:'p2c2c',question:'파랑',rootStr:'3',rootSet:'p2c2c3',res:'y'});
    rootArr.push({root:'p2c2c',question:'보라',rootStr:'4',rootSet:'p2c2c4',res:'y'});
    rootArr.push({root:'p2c2c',question:'노랑',rootStr:'5',rootSet:'p2c2c5',res:'y'});
    rootArr.push({root:'p2c2c',question:'기타',rootStr:'6',rootSet:'p2c2c6',res:'y'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-겨울-크다-겹침 : 색
    rootArr.push({root:'p2d1a',question:'흰색',rootStr:'1',rootSet:'p2d1a1',res:'y'});
    rootArr.push({root:'p2d1a',question:'빨강',rootStr:'2',rootSet:'p2d1a2',res:'y'});
    rootArr.push({root:'p2d1a',question:'파랑',rootStr:'3',rootSet:'p2d1a3',res:'y'});
    rootArr.push({root:'p2d1a',question:'보라',rootStr:'4',rootSet:'p2d1a4',res:'y'});
    rootArr.push({root:'p2d1a',question:'노랑',rootStr:'5',rootSet:'p2d1a5',res:'y'});
    rootArr.push({root:'p2d1a',question:'기타',rootStr:'6',rootSet:'p2d1a6',res:'y'});

    //level5 : 식물-꽃-겨울-크다-안겹침 : 색
    rootArr.push({root:'p2d1b',question:'흰색',rootStr:'1',rootSet:'p2d1b1',res:'y'});
    rootArr.push({root:'p2d1b',question:'빨강',rootStr:'2',rootSet:'p2d1b2',res:'y'});
    rootArr.push({root:'p2d1b',question:'파랑',rootStr:'3',rootSet:'p2d1b3',res:'y'});
    rootArr.push({root:'p2d1b',question:'보라',rootStr:'4',rootSet:'p2d1b4',res:'y'});
    rootArr.push({root:'p2d1b',question:'노랑',rootStr:'5',rootSet:'p2d1b5',res:'y'});
    rootArr.push({root:'p2d1b',question:'기타',rootStr:'6',rootSet:'p2d1b6',res:'y'});

    //level5 : 식물-꽃-겨울-크다-일체형 : 색
    rootArr.push({root:'p2d1c',question:'흰색',rootStr:'1',rootSet:'p2d1c1',res:'y'});
    rootArr.push({root:'p2d1c',question:'빨강',rootStr:'2',rootSet:'p2d1c2',res:'y'});
    rootArr.push({root:'p2d1c',question:'파랑',rootStr:'3',rootSet:'p2d1c3',res:'y'});
    rootArr.push({root:'p2d1c',question:'보라',rootStr:'4',rootSet:'p2d1c4',res:'y'});
    rootArr.push({root:'p2d1c',question:'노랑',rootStr:'5',rootSet:'p2d1c5',res:'y'});
    rootArr.push({root:'p2d1c',question:'기타',rootStr:'6',rootSet:'p2d1c6',res:'y'});

    //--------------------------------------------------------------------------------------

    //level5 : 식물-꽃-겨울-작다-겹침 : 색
    rootArr.push({root:'p2d2a',question:'흰색',rootStr:'1',rootSet:'p2d2a1',res:'y'});
    rootArr.push({root:'p2d2a',question:'빨강',rootStr:'2',rootSet:'p2d2a2',res:'y'});
    rootArr.push({root:'p2d2a',question:'파랑',rootStr:'3',rootSet:'p2d2a3',res:'y'});
    rootArr.push({root:'p2d2a',question:'보라',rootStr:'4',rootSet:'p2d2a4',res:'y'});
    rootArr.push({root:'p2d2a',question:'노랑',rootStr:'5',rootSet:'p2d2a5',res:'y'});
    rootArr.push({root:'p2d2a',question:'기타',rootStr:'6',rootSet:'p2d2a6',res:'y'});

    //level5 : 식물-꽃-겨울-작다-안겹침 : 색
    rootArr.push({root:'p2d2b',question:'흰색',rootStr:'1',rootSet:'p2d2b1',res:'y'});
    rootArr.push({root:'p2d2b',question:'빨강',rootStr:'2',rootSet:'p2d2b2',res:'y'});
    rootArr.push({root:'p2d2b',question:'파랑',rootStr:'3',rootSet:'p2d2b3',res:'y'});
    rootArr.push({root:'p2d2b',question:'보라',rootStr:'4',rootSet:'p2d2b4',res:'y'});
    rootArr.push({root:'p2d2b',question:'노랑',rootStr:'5',rootSet:'p2d2b5',res:'y'});
    rootArr.push({root:'p2d2b',question:'기타',rootStr:'6',rootSet:'p2d2b6',res:'y'});

    //level5 : 식물-꽃-겨울-작다-일체형 : 색
    rootArr.push({root:'p2d2c',question:'흰색',rootStr:'1',rootSet:'p2d2c1',res:'y'});
    rootArr.push({root:'p2d2c',question:'빨강',rootStr:'2',rootSet:'p2d2c2',res:'y'});
    rootArr.push({root:'p2d2c',question:'파랑',rootStr:'3',rootSet:'p2d2c3',res:'y'});
    rootArr.push({root:'p2d2c',question:'보라',rootStr:'4',rootSet:'p2d2c4',res:'y'});
    rootArr.push({root:'p2d2c',question:'노랑',rootStr:'5',rootSet:'p2d2c5',res:'y'});
    rootArr.push({root:'p2d2c',question:'기타',rootStr:'6',rootSet:'p2d2c6',res:'y'});

    // 꽃 분류 끝
}