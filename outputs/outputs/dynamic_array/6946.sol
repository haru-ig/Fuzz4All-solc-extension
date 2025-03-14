pragma solidity ^0.8.0;
contract Test4 {
    mapping(uint => uint[]) private s2;
    constructor() {
        uint[4] memory i;
        uint[4] memory j;
        j[1] = i;
        s2[1] = j;
    }
}

pragma solidity ^0.8.0;
contract Test1 {
    uint constant i = 6;
    constructor() {
        uint j;
        uint[5] memory i;
        i[3] = i;
        i[4] = j;
        i[2] = i;
        s2[1] = i;
    }
}

contract Test3 {
    mapping(uint => uint[]) s2;
    constructor() {
        uint j;
        uint[4] memory i;
        i[0]++;
        s2[0] = i;
    }
}

contract Test1 {
    uint constant i = 2;
    uint constant j = 3;
    uint constant k = 7;
    uint[5] memory s2;
    constructor() {
        uint l;
        uint[4] memory i;
        uint[4] memory j;
        j[1] = i;
        s2[1] = j;
        uint o;
        o ++ ;
        o -- ;
        l ++ ;
        o -= ;
        o += ;
        o *= ;
        o /= ;
    }
    function mod(uint x) public pure returns (uint) {
        return (x % i) + (j % k);
    }
}
