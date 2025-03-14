pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 _value;
    function set() public {
        _value = _value + 1;
    }
    function getValue() public view returns (uint256) {
        return _value;
    }
    function modify() public {

    }
}
