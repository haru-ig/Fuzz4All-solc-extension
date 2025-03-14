pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 1;
    uint256 value2 = 2;
    uint256[] memory _valueArray;
    function append(uint256 value) public {
        _valueArray.push(value);
        _valueArray.push(value);
    }
    function getValue(uint256 index) public view returns (uint256) {
        require(index < _valueArray.length, "the index is out of bounds");
        return _valueArray[index];
    }
}
