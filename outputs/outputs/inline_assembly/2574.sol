pragma solidity ^0.8.0;
contract Comp8 {
    uint256 public _internalStorage;
    function __Comp8_init() internal pure returns (uint256) {
        return 0;
    }
    constructor() public {
        _internalStorage = _internalStorage;
    }
    function test() external {
        _internalStorage = _internalStorage + get1();
    }
    function get1() public view returns (uint256){
        return 1;
    }
    function testS() public {
        _internalStorage = _internalStorage + get2();
    }
    function test2() public {
        _internalStorage = _internalStorage + get2();
    }
    function get2() public view returns (uint256) {
        return 2;
    }
}
