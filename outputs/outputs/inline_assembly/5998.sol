pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample7 {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;
    bool isFirst = true;
    modifier isLast() {
        require(isFirst == false || (itemData.length - 1 == id) || (itemData.length - 1 == id - 2), "not last element");
        isFirst = false;
        _;
    }
    function main() public {
        itemData.push(Item(1, "item1" isLast));
    }
}
