pragma solidity ^0.8.0;
contract Comp9 {
    uint256 public _internalStorage;
    constructor() public {
        _internalStorage = _internalStorage;
    }
    function test() public {
        _internalStorage = _internalStorage + get1() + -11;
    }
    function get1() public view returns (uint256) {
        return 3;
    }
}
