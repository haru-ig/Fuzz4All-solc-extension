pragma solidity ^0.8.0;
contract Equivalent {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        a = 128;
        b = _value2;
        c = _value3;
    }
    function set(uint b, uint d, uint _value, uint e) public {
        b = b + d;
        c = c + e;
    }
    fallback() external payable;
    }
}
