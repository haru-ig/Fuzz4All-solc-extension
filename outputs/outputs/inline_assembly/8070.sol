pragma solidity ^0.8.0;
contract MultipleReturn1x095 {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn0x01modified() public returns (uint, uint, uint) {
        return (
            15,
            5,
            15
        );
    }
    function multipleReturn0x02modified() public returns (uint) {
        return x;
    }
    function multipleReturn1x01modified(uint _num) public returns (uint) {
        return _num;
    }
    function multipleReturn1x02modified(uint _num) public returns (uint256, uint) {
        return (
            15,
            15
        );
    }
    function multipleReturn1x03modified(uint _num) public returns (uint256) {
        return (
            5
        );
    }
    function multipleReturn0x00modified(uint _num) public returns (uint256) {
        return x;
    }
    function multipleReturn2modified(uint _num) public returns (uint256, uint) {
        return (
            15,
            15
        );
    }
    function multipleReturn3modified
