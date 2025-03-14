pragma solidity ^0.8.0;
contract mutatedStorage2{
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    constructor() public {
        check(4 < a);
        c[a] += 1;
        c[b] += 1;
        check(4 < b);
        d[a][b] += 1;
        d[b][a] += 1;
        a = 2;
        b = 2;
    }
}

pragma solidity ^0.8.0;
contract mutatedStorage3{
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    uint x;
    constructor() public {
        x += 1;
        check(4 < x);
        c[x] += 1;
        c[b] += 1;
        check(4 < b);
        d[x][b] += 1;
        d[b][x] += 1;
        x = 2;
        b = 2;
        a = a;
    }
    function change1() public {
        x += 1;
        a = b;
        b = 2;
        a = a;
        b = 2;
        x = x;
    }
    function change2() public {
        b = 2;
        a = a;
        b = 2;
        a = a;
        x = x;
    }
    function change3() public {
        a = a;
        a = a;
        a = a;
        a = a;
        x = x;
    }
    function change4() public {
        a = a;
        b = a;
        x = x;
        a = a;
        b = a;
        a = a;
        x = x;
        a = a;
        b = a;
        a = a;
        x = x;
        a = a;
        b = a;
        a = a;
        b = a;
        x = x;
        a = a;
        b = a;
        a = a;
        b = a;
        x = x;
        a = a;
        b = a;
        a = a;
        b = a;
        x = x;
    }
}
