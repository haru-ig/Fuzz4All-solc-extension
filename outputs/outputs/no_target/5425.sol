pragma solidity ^0.8.0;
contract J {
    uint256 public x;

    function f() {

    }
    function g() public pure{
        x = 0;
    }
    function h() public view returns (uint256) {
        return x;
    }
}
