pragma solidity ^0.8.0;
contract Mutated {
    uint public a;
    uint [16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        a = 255;
        b = _value2;
        c = _value3;
    }

pragma solidity ^0.8.0;
contract Mutated {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        a = 256;
        b = _value2;
        c = _value3;
    }
    }
contract Mutated {
    uint public a;
    uint [16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        uint a = 255;
        b = _value2;
        c = _value3;
    }
}
pragma solidity ^0.8.0;
contract Mutated {
    uint public a;
    uint [16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        uint[17] memory a_b = new uint[](16);
        a_b = _value2;
        a = 255;
        b = a_b;
        c = _value3;
    }
    }
