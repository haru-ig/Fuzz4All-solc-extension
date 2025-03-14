pragma solidity ^0.8.0;
contract D {
    uint256 a;
    mapping(uint256 => uint256) public b;
    constructor(uint256 _a_) {
        a = _a_;
    }
    function c() public {
        a = a + 2;
    }
    function d() public {
        a = a + 3;
        b[a] = b[a] + 4;
    }
}
