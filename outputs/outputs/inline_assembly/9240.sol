pragma solidity ^0.8.0;
contract B is A {

    uint variableStore;

    function externalCall(uint _value) public returns (uint result) {
        return _value;
    }

    function callUsingInline(uint _value) public {
        result = externalCall(_value);
    }

    function mutated() public pure returns (uint) {
        return mutated(variableStore);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public immutable variable;
    function C(uint x) {
        variable = x;
    }
}

pragma solidity ^0.8.0;
contract D is A {
    uint constant _uint64 = 1e9;
    uint constant _uint32 = 8**32;

    uint public immutable variableStore;

    function C(uint x) {
        variableStore = x;
    }

    function externalCall(uint _value) public returns (uint result) {
        return _value;
    }

    function callUsingInline(uint _value) public {
        result = externalCall(_value);
    }

    function mutated() public pure returns (uint) {
        return mutated(variableStore);
    }
}


contract E  {
    uint constant _uint64 = 1e9;
    uint constant _uint32 = 8**32;
    uint public immutable variableStore;

    function E(uint x) {
        variableStore = x;
    }

    function externalCall(uint _value) public returns (uint result) {
        return _value;
    }

    function callUsingInline(uint _value) public {
        result = externalCall(_value);
    }

    function mutated() public pure returns (uint) {

        return mutated(variableStore);
    }
}


contract F {
    uint internal immutable variableStoreA;
    uint internal immutable variableStoreB;

    function F(uint a) {
        variableStoreA = a;
    }

    function externalCall(uint _value)
