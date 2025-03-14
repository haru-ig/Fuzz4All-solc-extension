pragma solidity ^0.8.0;
contract mutatedStorage2{
    uint a;
    uint a2;
    uint b;
    uint b2;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    constructor() public {
        check(2 < a);
        check(2 < a2);
        c[a] += 1;
        b2 /= 1;
        c[a2] += 1;
        check(2 < 1);
        d[a][b] += 1;
        b2 *= 2;
        d[b][a] += 1;
    }
    function check(bool predicate) internal pure {
        assert(predicate);
    }
}

contract mutatedStorage3{
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    constructor() public {
        check(2 < a);
        c[a] += 1;
        c[b] += 1;
        check(2 < b);
        d[a][b] += 1;
        d[b][a] += 1;
    }
    function check(bool predicate) internal pure {
        assert(predicate);
    }
}


contract mutatedStorage4{
    uint a;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    uint b;
    constructor() public {
        check(2 < a);
        c[a] += 1;
        c[b] += 1;
        d[a][b] += 1;
        c[c[c[a] + 1]] += 2;
        b += b + 1;





        b += d[b][a];
        b += 1;
        b += a + b;
    }

    function check(bool predicate) internal pure {
        assert(predicate);
    }
}
