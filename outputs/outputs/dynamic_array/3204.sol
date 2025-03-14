pragma solidity ^0.8.0;
contract Mod {
    uint[99][9] items;
    uint[99][9] getItems;
    function setItems(uint[99][9] memory new_items) public {
        items = new_items;
    }
    function getArrayItems(uint x, uint y) public view returns (uint[99][9] memory) {
        return (items[(x - 1) * 100 + (y - 1)]);
    }
}
