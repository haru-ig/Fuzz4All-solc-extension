pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 _value1;
    uint256 _value2;
    function increment() public {
        _value1 = 1;
        _value2 = 2;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
}
