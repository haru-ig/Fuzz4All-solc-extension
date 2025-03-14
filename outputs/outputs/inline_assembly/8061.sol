pragma solidity ^0.8.0;
contract MultipleReturn1x542 {
    uint public x;

    function multipleReturn(uint _num) public returns (uint, uint) {
        return (
            5550,
            5
        );
    }

    function multipleReturn0x540modified(uint _num) public returns (uint) {
        return 5;
    }

    function multipleReturn0x541modified(uint _num) public returns (uint, uint) {
        return (
            5,
            5
        );
    }

    function multipleReturn2modified(uint _num) public returns (uint) {
        return 5;
    }

    function multipleReturn0x02modified(uint _num) public returns (uint, uint) {
        return (0, 5);
    }
}
