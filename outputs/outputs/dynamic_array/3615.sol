pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(address => uint256) b;
    function c() public {
        b[a()] = a();
        a = 1;
        a = 565;
    }
}
