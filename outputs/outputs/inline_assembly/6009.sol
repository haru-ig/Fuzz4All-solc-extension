pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample2 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;
    mapping(address => uint256) public userBoughtIdMapping;
    function main() public {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
        itemData.push(Item(3, "item3"));
        userBoughtIdMapping[msg.sender] = 1;

        uint256 value = 1;
        while (value == 1) {
            value = 1;
            for (uint8 index = 0; index < 10000; index++) {
                value = 2;
            }
        }
    }
}
contract SemanticallyEquivalentAssemblyExample1 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;
    mapping(address => uint256) public userBoughtIdMapping;
    Item[] internal reversedArray;
    uint8 internal currentIndex = 0;

    function main() public {
        itemData.push(Item(1, "item1"));
        itemData.push(Item(2, "item2"));
        itemData.push(Item(3, "item3"));
        userBoughtIdMapping[msg.sender] = 1;
        reversedArray.push(Item(4, "item4"));
        reversedArray.push(Item(5, "item5"));
        reversedArray.push(Item(6, "item6"));

        uint256 value = 1;
        while (value == 1) {
            value = 1;
            for (uint8 index = 0; index < 10000; index++) {
                value = 2;
            }
        }
    }
}
