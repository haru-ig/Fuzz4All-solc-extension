pragma solidity ^0.8.0;
contract Mod {
    uint[99][99] items;
    uint[99][99] setItems;
    function getItems() public view returns (uint[99][99][99]) {
        return setItems;
    }
    function setItems(uint[99][99] memory new_items) public {
        setItems = new_items;
    }
}
