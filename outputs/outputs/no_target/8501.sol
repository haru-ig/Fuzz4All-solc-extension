pragma solidity ^0.8.0;
contract Semantic {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        a = _value1;
        b = _value2;
        c = _value3;
    }
    uint public getA() public view returns(uint) {
        return a;
    }
    uint[16] public getB() public view returns(uint[16]) {
        return b;
    }
    uint public getC() public view returns(uint) {
        return c;
    }
    }
