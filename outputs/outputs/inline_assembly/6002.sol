pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample6 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item internal itemData;
    constructor() {
        itemData.id = 1;
        itemData.name = "itemFirst";
        itemData.seller = msg.sender;
    }
}
contract SemanticallyEquivalentAssemblyExample6 {
    struct Item {
        uint256 id;
        uint256 id1;
        string name;
        address seller;
    }
    Item internal itemData;
    constructor() {
        itemData.id = 1;
        itemData.id1 = 2;
        itemData.name = "itemFirst";
        itemData.seller = msg.sender;
    }
}
