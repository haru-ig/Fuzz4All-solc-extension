pragma solidity ^0.8.0;
contract MultipleReturn1x542 {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn(uint _num) public returns (uint z, uint y, uint z) {
        z = 5550;
        y = y;
        return (
            z,
            y,
            z
        );
    }
    function multipleReturn0x540modified(uint _num) public returns (uint z, uint y) {
        z = y;
        y = 5;
        return (
            z,
            y
        );
    }
    function multipleReturn0x541modified(uint _num) public returns (uint z) {
        z = x;
        return (
            z
        );
    }
    function multipleReturn2modified(uint _num) public returns (uint z, uint y) {
        z = y;
        y = 5;
        return (
            z,
            y
        );
    }
    function multipleReturn0x02modified(uint _num) public returns (uint z) {
        z = x;
        return (
            z
        );
    }
}


pragma solidity 0.8.0;

contract MultipleReturn1x542 {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn(uint _num) public returns (uint, uint, uint) {
        return (
            5550,
            y,
            5
        );
    }
    function multiple
