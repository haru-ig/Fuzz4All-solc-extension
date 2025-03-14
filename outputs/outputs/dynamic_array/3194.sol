pragma solidity ^0.8.0;
contract DynamicArrayABI {
    uint[] public array;
    function setItems(uint[] memory items) public {
        items.store(array);
    }
    function getItems() public view returns (uint[] memory) {
        return array;
    }
}
