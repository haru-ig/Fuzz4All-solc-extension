pragma solidity ^0.8.0;
contract MultipleReturn0x542modified {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn(uint _num) public {
        num = _num + 1;
    }
    function multipleReturn0x540modified(uint _num) public {
        num = _num;
    }
    function multipleReturn0x541(uint _num) public {
        num = _num + 1;
    }
    function multipleReturn2modified(uint _num) public {
        num = _num + 1;
    }
    function multipleReturn0x02(uint _num) public {
        num = _num;
    }
}
