pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyTest2 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] public itemData;
    constructor() {





        itemData.push(Item(2, "item 2"));
    }
}
contract SemanticallyEquivalentAssemblyTest {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item[] public itemData;
    constructor() {
        itemData.id = 1;
        itemData.name = "item 1";
        itemData.seller = msg.sender;
    }
}
contract SemanticallyEquivalentAssemblyTest4 {
    struct Item {
        uint256 id;
        string name;
    }
    Item public itemData;
    constructor() {

        itemData.name = "item 1";
    }
}
contract SemanticallyEquivalentAssemblyFailure {
    struct Item {
        uint256 id;
        string name;
    }
    Item public itemData;
    constructor() {
        uint50 i = 1000;
        itemData.id = i + 3;
    }
}
contract SemanticallyEquivalentAssemblyFailure2 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item public itemData;
    constructor() {
