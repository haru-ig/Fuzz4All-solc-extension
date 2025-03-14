pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;
    mapping(address => uint256) public userBoughtIdMapping;
    uint16 public constant BATCH_SIZE = 80;
    int internal offset = 0;
    function main() public {
        for (int i = 0; i < BATCH_SIZE; ++i) {
            itemData.push(Item(offset + 1, "item1"));
            itemData.push(Item(offset + 2, "item2"));
            itemData.push(Item(offset + 3, "item3"));
            offset += 4;
        }
        userBoughtIdMapping[msg.sender] = 1;
    }
}
