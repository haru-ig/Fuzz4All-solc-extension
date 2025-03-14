pragma solidity ^0.8.0;
contract Mod {
    mapping(uint => uint) items;
    function setItems(uint[] calldata new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[new_items[i]] = new_items[i];
        }
    }
}
