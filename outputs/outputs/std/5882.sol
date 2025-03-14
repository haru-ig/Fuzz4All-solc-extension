pragma solidity ^0.8.0;

contract SomeInterface {
    function m() public {
    }
    function c() public view returns (uint256 v) {
        return 1;
    }
    function f(uint256 v) public view returns (uint256 _v) {
        return 2;
    }
}
