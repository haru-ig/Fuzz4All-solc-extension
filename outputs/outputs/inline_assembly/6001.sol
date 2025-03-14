pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample8 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    string private value;
    Item public itemData;
    constructor() {
        itemData.id = 1;
        itemData.name = "item1";
        itemData.seller = msg.sender;
        value = "test contract constructor";
    }
}
