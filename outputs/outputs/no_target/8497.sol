pragma solidity ^0.8.0;
contract Mutated0 {
    uint public a;
    uint [8] public b;
    uint public c;
    constructor(uint _value1, uint[8] memory _value2, uint _value3) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set(uint a, uint[8] memory b, uint c) public {
        a = a + 64;
        b = b;
        c = c + 16;
    }
    }


pragma solidity ^0.8.0;
contract Mutated0 {
    uint public a;
    uint [8] public b;
    uint public c;
    constructor(uint _value1, uint[8] memory _value2, uint _value3) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set(uint a, uint[8] memory b, uint c) public {
        a = a + 16;
        b = b;
        c = c + 16;
    }
    function set3(uint a, uint[8] memory b, uint c) public {
        b[7] = b[7] * 10;
        emit c_update(c + 8);
    }
    }
contract G {
    uint128 private a;
    uint128[] private b;
    uint c;
    G(uint128 _value1, uint128[] memory _value2, uint _value3) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set2(uint128 a, uint128[]
