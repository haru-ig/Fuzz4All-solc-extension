pragma solidity ^0.8.0;
contract Mutated1 {
    uint public a;
    uint256 public b;
    uint8 public c;
    constructor (
        uint _value1,
        uint256 _value2,
        uint8 _value3
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set (
        uint a,
        uint256 b,
        uint8 c
    ) public {
        a = a + 16;
        b = b;
        c = c + 16;
    }
    }
contract G {
    uint128 private a;
    uint128[] private b;
    uint d;
    constructor (
        uint128 _value1,
        uint128[] memory _value2,
        uint _value3,
        uint _value4
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set (
        uint128 a,
        uint128[] memory b,
        uint d
    ) public {
        a = a + 16;
        b = b;
        d = d + 16;
    }
    }

pragma solidity ^0.8.0;
contract Mutated2 {
    uint public a;
    uint256 public b;
    uint512 public c;
    constructor (
        uint _value1,
        uint256 _value2,
        uint512 _value3
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set (
        uint a,
        uint256 b,
        uint512 c
    ) public {
        a = a
