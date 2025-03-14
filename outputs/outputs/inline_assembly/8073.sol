pragma solidity ^0.8.0;
contract MultipleReturn2x096 {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn0x01modified() public returns (uint, uint, uint) {
        uint256 _10_000 = 1000;
        return (
            5550,
            5550,
            5550
        );
    }
    function multipleReturn0x02modified() public returns (uint) {
        uint256 _10_000 = 1000;
        return x;
    }
    function multipleReturn1x01modified(uint _num) public returns (uint) {
        uint256 _10_000 = 1000;
        return _num;
    }
    function multipleReturn1x02modified(uint _num) public returns (uint256, uint) {
        uint256 _10_000 = 1000;
        return (
            5550,
            5550,
            5550
        );
    }
    function multipleReturn1x03modified(
