pragma solidity ^0.8.0;
contract Mut {
    mapping(uint => uint) items;
    function setItems(uint[] memory new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[new_items[i]] = items[new_items[i]] + 3;
        }
    }
}
