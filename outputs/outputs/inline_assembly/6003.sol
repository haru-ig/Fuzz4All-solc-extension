pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample7 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;
    modifier onlyItemData(uint256 index) {
        require(index < itemData.length, "Index out of bounds");
        _;
    }
    function main() public {
        itemData[1].name = "item1";
        itemData[1].seller = msg.sender;
    }
}
