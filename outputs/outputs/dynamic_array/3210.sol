pragma solidity ^0.8.0;
contract Mod {
    uint[99][99] items;
    uint[99][99] getItems;

    function setItems(uint[99][99] memory new_items) public {
        getItems = new_items;
    }

    function addOne(uint[] memory new_items) public returns (uint[99][99] memory) {
        uint[99][99][99] memory new_getItems = new uint[99][99][99](getItems);

        for (uint i = 1; i < 100; i++) {
            new_getItems[i][i] = new_items[i];
            new_getItems[i][0] += 1;
        }

        return new_getItems;
    }
}
