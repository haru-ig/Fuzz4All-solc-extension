pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    uint public a;
    Equivalent b;
    uint public c;
    constructor(uint _value1, uint _value2, uint _value3) public {
        a = 128;
        b = Equivalent(_value1, _value2, _value3);
        c = 0;
    }
    function set(uint b, uint d, uint _value, uint e) public {
        b = a + b;
        c = c + a;
    }
}
contract NotSemanticallyEquivalent {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        a = 128;
        b = _value2;
        c = _value3;
    }
    function set(uint b, uint d, uint _value, uint e) public {
        b = a + c;
        c = 0;
    }
}
contract NotEquivalent {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        a = a;
        b = _value2;
        c = _value3;
    }
    function set() public {
        b = 0;
    }
}
