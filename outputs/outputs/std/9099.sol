pragma solidity ^0.8.0;
contract ExampleContract {
    mapping(uint256 => uint256) _valueArray;
    function increment() public {
        for (uint256 index = 0; index < _valueArray.length; ++index) {
            _valueArray[index] = _valueArray[index] + 1;
        }
    }
    function getValue(uint256 index) public view returns (uint256) {
        return _valueArray[index];
    }
}
