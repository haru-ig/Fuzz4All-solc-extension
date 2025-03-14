pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] public itemData;
    function main() public {
        if (msg.data.length > 1000) {
            itemData.push(Item(1, "item1"));
            itemData.push(Item(2, "item2"));
            itemData.push(Item(3, "item3"));
        } else if (msg.data.length > 50) {
            itemData.push(Item(1, "item1"));
        } else {
            itemData.push(Item(1, "item2"));
        }
    }
}
contract SemanticallyEquivalentAssemblyExample4 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item[] internal itemData;
    if (msg.data.length > 1000) {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
        itemData.push(Item(3, "item3"));
    } else if (msg.data.length > 50) {
        itemData.push(Item(1, "item1"));
    } else {
        itemData.push(Item(1, "item2"));
    }
}
