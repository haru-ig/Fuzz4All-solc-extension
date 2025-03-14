pragma solidity ^0.8.0;
contract MultipleMutation0x542modified {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    uint public _num;
    function multipleMutation(uint _num) public {
        num = num;
        x = x;
        y = y;
        z = z;
        num = num;
        _num = _num;
    }
    function multipleMutation2modified(uint _data, uint _num) public {
        _num = num * num;
        num = num + _data;
    }
    function multipleMutation0x02(uint _num) public {
        _num = num;
    }
}
