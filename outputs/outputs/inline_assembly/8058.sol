pragma solidity ^0.8.0;
contract MultipleReturn0x87b {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn1() public returns (uint, uint, uint) {
        return (
            x,
            y,
            5
        );
    }
    function multipleReturn5() public returns (uint, uint) {
        return (
            x,
            5
        );
    }
    function multipleReturn3() public returns (uint) {
        return x;
    }
    function multipleReturn4() public returns (uint, uint) {
        return (
            x,
            5
        );
    }
    function multipleReturn6() public returns (uint) {
        return x;
    }
}
