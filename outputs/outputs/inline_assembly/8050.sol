pragma solidity ^0.8.0;
contract MultipleReturn0x542new {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn(uint _num) public returns (uint _x, uint _y) {
        num = _num;
        _x = num;
        _y = num * num;
    }
    function multipleReturn0x544modified(uint _num) public returns (uint, uint) {
        return (
            num,
            num * num
        );
    }
    function multipleReturn0x545(uint _num) public returns (uint, uint) {
        return (_num * num, 5);
    }
    function multipleReturn2(uint _num) public returns (uint, uint) {
        return (
            _num + 1,
            3 * num
        );
    }
    function multipleReturn0x02(uint _num) public returns (uint) {
        return _num;
    }
}
