pragma solidity ^0.8.0;
contract SemVer
{
    uint public a;
    constructor(uint _a){
        a = _a;
    }
    function increamse(uint _increase) public {
        if(a >= _increase){
            a = a + _increase;
        }
        else {
            a = a;
        }
    }


    function increamse2(uint _increase) public pure {
        if(a >= _increase){
            a = a + _increase;
        }
    }
    function decreamse(uint _decrease) public {
        if(a <= _decrease){
            a = 0;
        }
        else {
            a = a - _decrease;
        }
    }


    function decreamse2(uint _decrease) public pure {
        if(a <= _decrease){
            a = 0;
        }
    }
    function reset(uint _a) public {
        a = _a;
    }
    function reset2(uint _a) public pure {
        a = 0;
    }
}
