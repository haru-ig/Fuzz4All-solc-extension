pragma solidity ^0.8.0;
contract Mod {
    uint[] public items;
    function setItems(uint[] _items) public pure {
        for (uint i; i < _items.length; i++) {
            items.push(_items[i]);
        }
    }
}
