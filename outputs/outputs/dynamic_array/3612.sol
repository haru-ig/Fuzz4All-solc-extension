pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(uint256 => uint256) b;
    function c() public {
        b[a] = 1;
        a = 1000;
        b[a] = 2;
    }
}
