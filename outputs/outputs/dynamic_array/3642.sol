pragma solidity ^0.8.0;
contract D {
    uint256 a;
    mapping(uint256 => uint256) public b;
    function e() public {
        a += 1;
    }
    function f() public {
        b[a] = b[a] + 1;
    }
}
