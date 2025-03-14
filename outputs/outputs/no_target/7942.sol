pragma solidity ^0.8.0;
contract TestMutator4 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0xdeadbeef;
        z = 1;
    }
    function set(uint256 _value1) public {
    x = _value1;
    }
    function set2(uint256 _value2) public {
    set(_from(uint128(_value2)));
    }
    function set3(uint256 _value3, uint256 _value4) public {
    set(uint256(_add(_from(uint128(_value3)), _from(uint128(_value4)))));
    }
    function set4() public {
    set(uint256(_add(x, x)));
    }
}
contract TestMultitype {
    uint[] public data;
    struct Test {
        uint a;
        uint b;
        uint c;
    }
    function mutator(uint _value1) public {
        uint128 val = uint128(_from(_value1));
        data[0] = val;
    }
}

contract Test {
    uint public a;
    uint public b;

    constructor () public {
        a = b = 0;
    }
    function callMethod (uint256 _value) public {
        b = a + _from(_value);
    }
}
contract Test1 {
    constructor () public {
    }
    function get() public returns (uint256) {
        return 0;
    }
    function set(uint256 _value1) public {
    }
}
