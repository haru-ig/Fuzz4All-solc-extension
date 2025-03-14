pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage{
    mapping(uint => uint) c;
    mapping(uint => uint) d;
    constructor() public {
        c[1] = 1;
        d = c;
    }
    function check() public {
        c[1] += 1;
        assert(c[1] == 2);
    }
}
