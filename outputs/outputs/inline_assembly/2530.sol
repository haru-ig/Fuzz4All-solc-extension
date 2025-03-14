pragma solidity ^0.8.0;
contract Comp64{
uint64 a;
constructor(uint32 _initialAmount) {
    a = _initialAmount;
}
function add(uint32 _b) public{
    a = a + _b;
}
    function subtract(uint32 _b) public{
        a = a - _b;
    }
    function multiply(uint32 _b) public{
        a = a * _b;
    }
    function divide(uint32 _b) public{
        a = a / _b;
    }
}
contract Comp65{
    uint32 a;
    constructor(uint32 _initialAmount) {
        a = _initialAmount;
    }
    function add(uint32 _b) public{
        a = a + _b;
    }
    function subtract(uint32 _b) public{
        a = a - _b;
    }
    function multiply(uint32 _b) public{
        a = a * _b;
    }
    function divide(uint32 _b) public{
        a = a / _b;
    }
}
contract Comp66{
uint32 a;
constructor(uint88 _initialAmount) {
    a = _initialAmount;
}
function add(uint32 _b) public{
    a = a + _b;
}
    function subtract(uint32 _b) public{
        a = a - _b;
    }
    function multiply(uint32 _b) public{
        a = a * _b;
    }
    function divide(uint32 _b) public{
        a = a / _b;
    }
    function add3(uint32 _b) public{
        a = a + _b;
    }
    function subtract3(uint32 _b) public{
        a = a - _b;
    }
    function multiply3(uint32 _b) public{
        a = a * _b;
    }
    function divide3(uint32 _b) public{
        a = a / _b;
    }
}
