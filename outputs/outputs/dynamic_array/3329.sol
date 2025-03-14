pragma solidity ^0.8.0;
interface I2 {
    function modify(bytes32 key, bytes4 functionSelector) external;
}
library I3 {
    struct Entry {
        uint256 slot;
        bytes4 functionSelector;
    }
    mapping(uint256 => Entry) public map;
}

pragma solidity ^0.8.0;
interface I4 {
    function use(uint256 key, bytes32 functionSelector) external;
    function useDynamic(uint256 key, bytes32 functionSelector) external;
}
library I5 {
    struct Item {
        uint256 value;
    }
    function get(uint256 key) public view returns (Item memory);
    function set(uint256 key, uint256 value) public;
}
contract TestCallDataAbiReencodingFixed
{

    I2 public immutable contract2;
    constructor(I2 memory contract2_) public {
        contract2 = contract2_;
    }
