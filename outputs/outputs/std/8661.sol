pragma solidity ^0.8.0;
contract Example
{
    function getter() public view returns (uint b) {
        return b;
    }
    function setter(uint _b) public {

    }
}
contract Example
{
    bytes32 private constant ZERO = bytes32(0x0);
    bytes32 private constant ONE = bytes32(0x1);

    bytes32[] public storageArray;

    function setter(bytes32[] storageArray_) public {
        storageArray = storageArray_;
    }
    function getter() public returns (bytes32[] storage array) {
        array = storageArray_;
    }
}
contract Example
{
    mapping(bytes32 => bytes32) private constant mapOne = mapping(bytes32 => bytes32);

    bytes32 private constant ZERO = bytes32(0x0);
    bytes32 private constant ONE = bytes32(0x1);

    bytes32[] storage public mapStorage;

    function setter(bytes32[] storage mapStorage_) public {
        mapStorage = mapStorage_;
    }
    function getter() public view returns (bytes32[] memory mapStorage) {
        mapStorage = mapStorage_;
    }
}
contract Example
{
    uint private constant ZERO = 0;
    uint private constant ONE = 1;

    uint[] storage public arrayStorage;

    function setter(uint[] storage arrayStorage_) public {
        arrayStorage = arrayStorage_;
    }
    function getter() public view returns (uint[] memory arrayStorage) {
        arrayStorage = arrayStorage_;
    }
}
contract Example
{
    function getter() public view returns (uint b) {
        return b;
    }
}
contract Example
{
    bytes32[] private _bytes32Array;
    uint public _uint = 0;

    function getter() public view returns (uint[] memory, uint memory, bytes32[] memory, uint) {
        return (_uint, b);
    }
    function setter(uint _uint, uint _b, bytes32[] storage _b32A) public {
        _uint = _uint;
        b = _b;
        _bytes32Array = _b32A;
    }
}
contract Example
{
    function getter() public pure returns (bytes32, bytes32) {
        return (bytes32(0xab), ZERO);
    }
}
