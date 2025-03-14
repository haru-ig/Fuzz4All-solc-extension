pragma solidity ^0.8.0;
contract DynamicArrayStorage {
    mapping(uint => uint) items;
    function getItems() public returns(uint[]) {
        return items.values();
    }
    function setItems(uint[] memory items_) external {
        for(uint i = 0; i < items_.length; i++) {
            items[items_[i+1]] = items_[i];
        }
    }
}
