pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample1 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;

    uint256 internal totalCountOfItem;
    Item[] public static allItemData;

    uint256 internal userBoughtIdMapping;
    mapping(address => uint256) public userBoughtIdMapping;

    constructor() {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
        itemData.push(Item(3, "item3"));
    }

    function main() public {
        itemData.push(Item(4, "item4"));
        totalCountOfItem++;
        userBoughtIdMapping = 4;
    }
}
