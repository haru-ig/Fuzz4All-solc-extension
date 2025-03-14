pragma solidity ^0.8.0;

contract Mod {
    struct Item {
        uint[] _items;
    }


    enum ItemType { Empty, One, More }
    struct Container {
