pragma solidity ^0.8.0;
contract Comp9 {
    uint256 public _internalStorage;
    function __Comp9_init() private pure returns (uint256){
        return 0;
    }
    function test() public {
        _internalStorage = _internalStorage + get1();
    }
    function get1() public view returns (uint256){
        return 1;
    }
    function testS() public {
        _internalStorage = _internalStorage + get3();
    }
    function __test3_init() public {
        _internalStorage = _internalStorage + get3();
    }
    function __test3_init2() internal {
        _internalStorage = _internalStorage + get3();
    }
    function get3() public view returns (uint256) {
        return 2;
    }
}
