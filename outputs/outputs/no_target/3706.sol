pragma solidity ^0.8.0;
contract W {
    uint d = 8;
    function g() public returns (uint) {
        return uint216(d);
    }
}
