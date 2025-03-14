pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample6 {
    struct Item {
        uint256 id;
        string name;
    }
    mapping(uint256 => Item) public itemData;
    function main() public {
        itemData[msg.sender] = Item(1, "item1");
        itemData[msg.sender] = Item(2, "item2");
    }
}
contract SemanticallyEquivalentAssemblyExample7 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    mapping(uint256 => Item) public itemData;
    constructor() {
        itemData[1] = Item(1, "item1", msg.sender);
        itemData[2] = Item(2, "item2", msg.sender);
    }
}
contract SemanticallyEquivalentAssemblyExample8 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    mapping(uint256 => Item) internal itemData;
    constructor() {
        itemData[msg.sender] = Item(1, "item1", msg.sender);
        itemData[msg.sender] = Item(2, "item2", msg.sender);
    }
}
contract SemanticallyEquivalentAssemblyExample4 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    mapping(address => Item) public itemData;
    function main() public {
        itemData.push();
        itemData.push();
    }
}
contract SemanticallyEquivalentAssemblyExample3 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    mapping(address => Item) internal itemData;
    function main() public {
        itemData[msg.sender] = Item(1, "item1", msg.sender);
        itemData[msg.sender
