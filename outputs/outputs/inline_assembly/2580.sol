pragma solidity ^0.8.0;
contract Comp9 {
    struct InnerStruct {
        uint256 _private;
    }
    struct TestStruct{
        uint256 _private;
    }
    struct CompStruct{
        uint1 _private;
    }
    uint256 public b;
    uint256 public c;
    function __Comp9_init() internal pure returns (uint256) {
        uint256 x = 0x0102030405060708090a0b0c0d0e0f;
        if (x==0x00 || x==0xffffffff || x==0xffffffffffffffff) {

            return 1;
        } else {
            return 0;
        }
    }
    constructor(uint256 _b) public {
        b = _b;
        c = 1;
    }

    function test() external returns (uint256) {
        b = b + 1;
        return b;
    }
    function test2() public returns (uint256) {
        uint256 a = b + c;
        c = 3;
        return a;
    }
    function test3(uint256 _a) public onlyOnce {
        b = b + _a;
    }
    function test4() public returns (uint256) {
        uint256 x = b + 1;
        b = b + _internalStorage;
        return x;
    }
    function test5() public {
        uint256 a = get2();
        _internalStorage = 1;
    }
    function get2() public view returns (uint256){
        uint256 x;
        x[1];
        if (x == 5) {
            return 5;
        } else {
            return 0;
        }
    }
    function test6() public {
        uint8 z = get3();
        z = get3();
        assert(3 >= z);
    }
    function get3() public pure returns (uint8){
        return 3;
    }
    /* And here, the memory is managed by an anonymous
