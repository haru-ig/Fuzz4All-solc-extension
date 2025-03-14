pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 1;
    uint256 value2 = 2;
    address payable _address1;
    mapping(uint256 => uint256) _valueArray;
    function increment() public {
        _valueArray[value1] = value1 + 1;
        _valueArray[value2] = value2 + 2;
    }
    function getValue(uint256 index) public view returns (uint256) {
        return _valueArray[index];
    }
}
