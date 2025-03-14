pragma solidity ^0.8.0;
contract Mut {
    mapping(uint => uint) public items;
    function remove_item(uint i) public {
        items[i] = items[i] - 3;
    }
}
