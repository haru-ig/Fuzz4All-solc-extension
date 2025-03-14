pragma solidity ^0.8.0;
contract Mod {
    uint[99][9] initialItems;
    uint[99][99] items;

    function setItems(uint[99][99] memory new_items) public {
        initialItems = new_items;

        for (uint i=0; i < 90; ++i) {
            items = initialItems;
        }
    }
}
