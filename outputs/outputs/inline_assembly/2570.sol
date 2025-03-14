pragma solidity ^0.8.0;
interface Comp6 {
    function test() external view;
    function testS() external;
    function test2() external;
}
contract Comp7 {
    uint256 public _internalStorage;
    constructor() public {
        _internalStorage = _internalStorage;
    }
    function test() external view returns (uint256) {
        return _internalStorage;
    }
    function testS(uint a) public {
        _internalStorage = a;
    }
    function test2() public {
        _internalStorage = _internalStorage + get1();
    }
    function get1() public view returns (uint256) {
        return 1;
    }
    function test3() public {
        _internalStorage = _internalStorage + get2();
    }
    function get2() public view returns (uint256) {
        return 2;
    }
}
library Comp8 {
    uint256 public _internalStorage;
    constructor() public {
        _internalStorage = _internalStorage;
    }
    function test() public view returns (uint256) {
        return _internalStorage;
    }
    function testS(uint a) public {
        _internalStorage = a;
    }
    function test2() public {
        _internalStorage = _internalStorage + get1();
    }
    function get1() public view returns (uint256) {
        return 1;
    }
    function test3() public {
        _internalStorage = _internalStorage + get2();
        return _internalStorage + a;
    }
    function get2() public view returns (uint256) {
        return 2;
    }
}
contract Comp7 {
    uint256 public _internalStorage;
    constructor() public {
        _internalStorage = _internalStorage;
    }
    function test() internal view returns (uint256) {
        return _internalStorage;
    }
    function testS(uint a) public {
        _internalStorage = a;
    }
    function test2() public {
        _internalStorage = _internalStorage + get1();
    }
    function get1() public view returns (uint256) {
        return 1;
    }
    function test3() public
