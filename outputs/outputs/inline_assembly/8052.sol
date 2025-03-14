pragma solidity ^0.8.0;
contract MultipleReturn0x542modified {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn(uint _num) public returns (uint _num1, uint _num2) {
        num = _num;
        return num;
    }
    function multipleReturn0x540modified(uint _num) public returns (uint) {
        return num;
    }
    function multipleReturn0x541(uint _num) public returns (uint, uint) {
        return (
            num + _num,
            5 / num
        );
    }
    function multipleReturn2modified(uint _num) public returns (uint, uint) {
        return (
            num,
            5
        );
    }
    function multipleReturn0x02(uint _num) public returns (uint) {
        return _num;
    }
}




pragma solidity ^0.8.0;
contract MultipleReturn0x542modified {

    address public a;
    address public b;
    address public c;
    address public
