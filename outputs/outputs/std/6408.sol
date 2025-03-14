pragma solidity ^0.8.0;
contract Array {
    struct MyArr{
        uint256 value;
    }
    struct MyIntArr {
        uint256[] element;
        uint256 length;
    }
    enum Direction {
        Forward,
        Backward,
        Left,
        Right
    }
    uint256 constant N = 16;
    uint256 constant M = 5;
    uint256 array_size = 0;
    mapping(uint256 => Address) public a;
    uint256[] array;
    uint256 getArrayIndex(uint128 _x) public pure returns(uint256){
        return _x * (2 ** (array_size-1));
    }
    function Array() public {
        a[1] = address(this);
        a[2] = address(this);
        a[3] = address(this);
        a[4] = address(this);
        A3();
        A4();
        A5();
        A6();
        printMessage("Array is loaded.");
    }
    function A1() public returns (address) {
        return a[1];
    }
    function A2() public returns (address) {
        return a[2];
    }
    function A3() public returns (address) {
        return a[3];
    }
    function A4() public returns (address) {
        return a[4];
    }
    function A5() public returns (address) {
        return a[5];
    }
    function A6() public returns (address) {
        return a[6];
    }
    function A7() public returns (address) {
        return a[7];
    }
    function A8() public returns (address) {
        return a[8];
    }
    function A9() public returns (address) {
        return a[9];
    }
    function A10() public returns (address) {
        return a[10];
    }
    function A11() public returns (address) {
        return a[11];
    }
    function A12() public returns (address) {
        return a[12];
    }
    function A13() public returns (address) {
        return a[13];
    }
    function A14() public returns (address) {
        return a[14];
    }
    function A15() public returns (address) {
        return a[1
