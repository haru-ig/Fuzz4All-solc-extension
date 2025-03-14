pragma solidity ^0.8.0;
contract D {
    uint256 a;
    mapping(uint256 => uint256) public b;
    function c() public {
        a = a + 1;
    }
    function d() public {
        b[a] = 3;
        a = a + 1;
    }
}
