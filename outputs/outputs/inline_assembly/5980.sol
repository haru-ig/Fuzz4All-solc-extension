pragma solidity ^0.8.0;
contract SemanticsCompatibleInlineAssemblyExample {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item[] public itemData;
    function main() public {
        msg.sender;
        itemData.push(Item(1, "item1", msg.sender));
        itemData.push(Item(2, "item2", msg.sender));
    }
}<issue_closed>
