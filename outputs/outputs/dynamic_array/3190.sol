pragma solidity ^0.8.0;
contract DynamicArrayAddDelStorage {
    uint[] items;
    function getItems() public view returns(uint[] memory) {
        for (;;) {
            uint[] memory newItems;
            newItems = items;
            newItems.push(uint(items.length) + 1);
            items = newItems;
        }
    }
}
