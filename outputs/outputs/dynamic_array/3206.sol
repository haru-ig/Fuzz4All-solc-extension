pragma solidity ^0.8.0;
contract Mod2 {
    uint[99][9] items;
    uint[99][9] getItems;
    function setItems(uint[99][9] memory new_items) public {
        items = getItems;
    }
}

pragma solidity ^0.8.0;
contract Mod3 {
    uint[99][9] getItems;
    uint[84][9] items;

    uint a;
    function setItems(uint[99][9] memory new_items, uint[84][9] memory new_items2) public {
        getItems = new_items;
        items = new_items;
    }
}
