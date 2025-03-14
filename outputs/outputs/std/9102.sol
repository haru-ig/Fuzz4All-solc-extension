pragma solidity ^0.8.0;
contract ExampleMutator {
    uint256 _value1;
    uint256 _value2;
    function increment() public {
        ExampleContract(_value1).increment();
        _value2 = _value2 + 2;
    }
    function decrement() public {
        ExampleContract(_value1).decrement();
        _value2 = _value2 - 1;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
}
