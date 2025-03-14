pragma solidity ^0.8.0;
interface IDotArrayStorage {
    function getArrayAddress() external view returns (address);
    function getArraySize() external view returns (uint256);
    function getArrayValue(uint256 _index) external view returns (uint);
    function getArrayElement(uint256 _index, uint _indexInElem) external view returns (uint);
    function setArrayValue(uint256 _index, uint _value) external;
    function setArrayElement(uint256 _index, uint _indexInElem, uint _value) external;
    function removeArrayElement(uint256 _index, uint _indexInElem) external;
    function append(uint _value) external;
    function getElementAddressInArray(uint256 _arrayIdx, uint256 _elemIdx) external view returns (address);
    function getAddressFromIndex(array storage _storage, uint256 _index) external view returns (address);
    function isEqual(address _a, address _b) external pure returns (bool);
}
