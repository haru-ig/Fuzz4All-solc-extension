pragma solidity ^0.8.0;
contract MutatedContract {
    uint256 _value1;
    uint256 _value2;
    bool _value3;
    address _contractAddress1;

    function initialize(address _contractAddress1) external {
        _value1 = 0;
        _value2 = 0;
        _value3 = true;
        _contractAddress1 = _contractAddress1;
    }
    function decrement() public {
        _value1 = _value1 - 1;
        _value2 = _value2 - _value1;
        _value2 = _value2 - _value3;
        _value2 = _value2 > 1? _value2 - 2 : _value2 - 1;
        _value3 =!_value3;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
    function getContractAddress() public view returns (address) {
        return _contractAddress1;
    }
}
