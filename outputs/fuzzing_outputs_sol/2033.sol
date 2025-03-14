pragma solidity ^0.8.0;
contract Mutater0 {
    uint32 internal _value;
    event MutedEvent(uint32 value);
    function mutatedFunction(uint32 value) public {
        require(value!= 0, "Zero value");
        _value = value;
        emit MutedEvent(value);
        mutatedFunctionImpl(value);
    }
    function mutatedFunctionImpl(uint32 value) public pure {
        if (value <= 0) {
            revert();
        }
    }
}
pragma solidity ^0.8.0;
contract Mutater1 {
    uint32 internal _value;
    event MutedEvent(uint32 value);
    function mutatedFunction(uint32 value) public {
        require(value!= 0, "Zero value");
        _value = value;
        emit MutedEvent(value);
        mutatedFunctionImpl();
        if (msg.value + 10 < value) {
            revert();
        }
    }
    function mutatedFunctionImpl() internal pure {
        if (msg.value + 10 <= 0) {
            revert();
        }
    }
}
pragma solidity ^0.8.0;
contract Mutater1 {
    uint32 internal _value;
    event MutedEvent(uint32 value);
    function mutatedFunction(uint32 value) public {
        _value = value;
        emit MutedEvent(value);
        mutatedFunctionImpl();
        if (msg.value + 10 < value) {
            revert();
        }
        mutatedFunction2(value, value);
        if (msg.value + 10 < value) {
            revert();
        }
        mutatedFunction3(value, value);
        if (msg.value + 10 < value) {
            revert();
        }
    }
    function mutatedFunctionImpl() internal pure {
        if (msg.value + 10 <= 0) {
            revert();
        }
    }
    function mutatedFunction2(uint32 arg1, uint32 arg2) internal pure {
        if (arg1 < arg2) {
            revert();
        }
    }
    function mutatedFunction3(uint32 arg1, uint32 arg2) internal pure {
        if (arg1 < msg.value + 10) {
            revert();
        }
    }
}
pragma solidity ^0.8.0;
contract Mutater2 {
    uint32 internal _value;
    event MutedEvent(uint32 value);
    function mutatedFunction(uint32 value) public {
        _value = value;
        emit MutedEvent(value);
        mutatedFunctionImpl();
        if (msg.value + 10 < value) {
            revert();
        }
        mutatedFunction2(value, value);
