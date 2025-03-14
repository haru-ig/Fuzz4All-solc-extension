pragma solidity ^0.8.0;
contract Mod {
    mapping(uint => uint) items;
    uint[] memory new_items = [1, 2, 3];
    function setItems(uint[] memory new_items) public {
        for (uint i; i < new_items.length; i++) {
            items[new_items[i]] = new_items[i];
        }
    }
}
