pragma solidity ^0.8.0;


contract MultipleReturn1x542 {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn(uint _num) public returns (uint, uint, uint) {
        return (
            x.add(5).mul(2),
            y,
            5
        );
    }
    function multipleReturn0x540modified(uint _num) public returns (uint, uint) {
        return (
            y
