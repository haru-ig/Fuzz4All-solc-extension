pragma solidity ^0.8.0;

interface ArrayInterface {
    function sum(uint256[] memory numbers) external view returns (uint256);
    function maxValue(uint256[] memory numbers) external view returns (uint256);
    function minValue(uint256[] memory numbers) external view returns (uint256);
    function set(uint256[] memory numbers, uint256 _index, uint256 _value) external;
    function get(uint256[] memory numbers, uint256 _index) external view returns (uint256);
    function sort(uint256[] memory numbers) external;
}
contract Array {
    ArrayInterface internal variableArray;
    constructor () {
        variableArray = ArrayInterface(0xa57e71d5a1d7987c4fb8b7665afdf8b82b3619b7);
    }

    function set (uint256[] memory numbers, uint256 _index, uint256 _value) external {
        numbers[_index] = _value;
    }
