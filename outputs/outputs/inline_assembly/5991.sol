pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item[] public itemData;
    function main() public {
        itemData.push(Item(1, "item1", msg.value));
        itemData.push(Item(2, "item2", msg.value));
    }
}
