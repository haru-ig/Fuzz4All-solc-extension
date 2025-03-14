pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 1;
    uint256 value2 = 2;
    address payable _address1;
    mapping(uint32 => uint32) _valueArray;
    function increment() public {
        _valueArray[value1] = value1 + 1;
        _valueArray[value2] = value2 + 2;
    }
    function getValue() public view returns (uint32, uint32) {
        return (_valueArray[value1], _valueArray[value2]);
    }
}
