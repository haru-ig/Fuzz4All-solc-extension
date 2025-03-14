pragma solidity ^0.8.0;
contract Mod {
    uint[99][9] items;
    uint[99][9] getItems;
    function setItems(uint[99][9] storage new_items) public {
        getItems = new_items;
    }
}
