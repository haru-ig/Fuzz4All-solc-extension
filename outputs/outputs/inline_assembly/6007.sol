pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample2 {
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
contract SemanticallyEquivalentAssemblyExample1 {
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
        itemData.push(Item(4, "item4"));
        itemData.push(Item(5, "item5"));
        userBoughtIdMapping[msg.sender] = 1;
    }
}
library Functions {

    function valueAtStorage(uint256 offset){
        uint32 memoryData = abi.readUint32(address(0), offset);
        return memoryData;
    }
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample5 {
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
        itemData.push(Item(4
