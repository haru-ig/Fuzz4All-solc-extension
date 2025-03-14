pragma solidity ^0.8.0;
contract EquivalentNew {
    uint public a;
    uint256 public b;
    uint public c;
    function EquivalentNew(uint[5] memory _value1, uint _value2, uint _value3) public {
        a = 64;
        b = _value1[0] * 973 + _value2 * 17959 + _value3 * 1917375;
        c = _value1[1] * 93 + _value2 * 7 + _value3 * 5;
    }
    }
pragma solidity >=0.8.0;
