pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 1;
    uint256 value2 = 2;
    uint256 _value3 = 3;
    function increment() public {
        value1 = value1 + 1;
        value2 = value2 + 2;
        _value3 = _value3 + 4;
    }
}

pragma solidity ^0.8.0;
interface IArray {
    function findMin() returns (uint256 min, uint256 high, uint256 size);
    function findMax() returns (uint256 min, uint256 high, uint256 size);
    function addToArray(uint256 _index, uint256 _value) returns (uint256, uint256);
    function getValue(uint256 _index) returns (uint256);
    function sortArrayByValueAsc(uint256 _from) returns (uint256, uint256, uint256);
    function sortArrayByValueDesc(uint256 _from) returns (uint256, uint256, uint256);
    function sizeOfArray() returns (uint256, uint256, uint256);
}
