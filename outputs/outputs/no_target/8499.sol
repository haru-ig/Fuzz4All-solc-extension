pragma solidity ^0.8.0;
contract G Mutated {
    uint private a;
    uint[] private b;
    uint c;
    constructor(uint _value1, uint[] memory _value2, uint _value3) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set(uint a, uint[] memory b, uint c) public {
        a = a + 16;
        b = b;
        c = c + 16;
    }
    }

pragma solidity ^0.8.0;
contract Gtest {
    uint128 private a;
    uint128[] private b;
    uint c;
    constructor(uint128 _value1, uint128[] memory _value2, uint _value3) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set(uint128 a, uint128[] memory b, uint c) public {
        require(a == 0 || a % 2 == 0);
        a = a - 9;
        a = a % 10;
        a = a * 4 + 11 - 2;
        a = a * 1 + 34;
        require(a == uint128(9) * 2 + uint128(11) - uint128(34));
        require(a == uint128(43) + uint128(27));
        require(a == uint128(43) + uint128(27) + uint128(4) + uint128(1));
    }
    function equal(uint128[] memory b, uint c) public {
