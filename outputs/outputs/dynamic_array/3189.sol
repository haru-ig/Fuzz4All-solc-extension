pragma solidity ^0.8.0;
contract DynamicArrayStorage {
    uint[] items;
    function getItems() public view returns(uint[] memory) {
        return items;
    }
}
