pragma solidity ^0.8.0;
contract Mod {
    uint[99][99] memory items;
    uint[99][99] memory getItems;
    function setItems(uint[99][99] memory new_items) public {
        items = new_items;
    }
}
