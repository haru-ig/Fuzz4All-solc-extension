pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample4 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;
    mapping(address => uint256) public userBoughtIdMapping;
    function main() public {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
        userBoughtIdMapping[msg.sender] = 1;
    }
}
contract SemanticallyEquivalentAssemblyExample3 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;
    function main() public {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
        itemData.push(Item(3, "item3"));
    }
}
