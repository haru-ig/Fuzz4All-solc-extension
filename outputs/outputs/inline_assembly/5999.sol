pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item[9999] internal itemData = [
        Item(1, "item1", msg.sender)
    ];
    function main() public {
        itemData[8].id = 8;
        itemData[9].id = 9;
    }
}
