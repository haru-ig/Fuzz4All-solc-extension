pragma solidity ^0.8.0;
contract Mod {
    mapping(uint256 => uint256) items;
    function setItems(mapping(uint256 => uint256) calldata new_items) public {
        items = new_items;
    }
}
