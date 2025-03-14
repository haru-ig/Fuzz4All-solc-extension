pragma solidity ^0.8.0;
contract mutatedStorage{
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    constructor() public {
        check(2 < c[a]);
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
