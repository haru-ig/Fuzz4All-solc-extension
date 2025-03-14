pragma solidity ^0.8.0;
contract Mut6 {
    mapping (uint=>uint) items;
    uint a;
    function setItems(uint[] memory new_items) public {
        for(uint256 i = 0; i < new_items.length; i++) {
            items[new_items[i]]++;
        }
    }
    function setItems2(uint new_item) public {
        items[new_item]++;
    }
}
