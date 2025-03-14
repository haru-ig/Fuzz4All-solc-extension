pragma solidity ^0.8.0;
contract Mod {
    uint[99][99] items;
    uint[99][99] getItems;
    function setItems(uint[99][99] memory new_items) public {
        getItems = new_items;
    }
}
