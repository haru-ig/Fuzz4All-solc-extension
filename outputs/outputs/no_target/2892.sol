pragma solidity ^0.8.0;
contract newMutatedStorage {
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    constructor() public {
        uint160 x = this.balance;
        a = 123;
        b = x.iszero? 10 : 20;
        CHECK(2 < x);
        CHECK(2 < a);
        c[a] += 1;
        c[b] += 1;
        d[a][b] += 1;
        d[b][a] += 1;
    }
    function CHECK2(bool predicate) internal pure {
        assert(predicate);
    }
    function CHECK(bool predicate) internal pure {
        CHECK2(predicate);
    }
    modifier CHECK {
        CHECK2(true);
        _;
        CHECK2(false);
    }
}
