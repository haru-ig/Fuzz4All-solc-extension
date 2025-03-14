pragma solidity ^0.8.0;
contract Mod {
    uint[999][999] items;
    uint[999][999] getItems;

    struct Item {uint s; uint p;}
    uint[999][999] getItems(Item[] memory _items) public {
        for (uint i=0; i<_items.length; i++) {
            items[_items[i].s][_items[i].p] = i;
        }
    }
}
