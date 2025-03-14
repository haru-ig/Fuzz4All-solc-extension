pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample4 {
    uint[] public items;
    function add(uint val) public {
        items.push(val);
    }
}
contract SemanticallyEquivalentAssemblyExample6 {
    uint public item;
    constructor() {
        item = 1;
    }
}
contract SemanticallyEquivalentAssemblyExample7 {
    uint public item;
    function greet(uint i) public pure {
        item = i;
    }
    function get() public pure returns (uint){
        return item;
    }
}
contract SemanticallyEquivalentAssemblyExample3 {
    struct Item {
        uint256 id;
        string name;
        address seller;
    }
    Item public itemData;
    uint public itemsCount;
    uint public numberOfItemsToAllocate;
    uint public maximumNumberOfItemsToAllocate;
    constructor(uint _numberOfItemsToAllocate, uint _maximumNumberOfItemsToAllocate) {
        numberOfItemsToAllocate = _numberOfItemsToAllocate;
        maximumNumberOfItemsToAllocate = _maximumNumberOfItemsToAllocate;
        itemData.id = 1;
        itemData.name = "item1";
        itemData.seller = msg.sender;
    }
    function allocateItems() public {
        while(itemsCount + numberOfItemsToAllocate <= maximumNumberOfItemsToAllocate) {
            uint val = msg.value / numberOfItemsToAllocate;
            itemData.id = itemsCount;
            itemData.name = "item#"+uintToString(itemsCount + 1);
            itemData.seller = msg.sender;
            itemsCount = itemsCount + 1;
            allocateItem(val);
        }
    }
    function allocateItem(uint val) internal {
        if (itemData.seller == msg.sender) {
            itemData.seller = msg.sender;
            item += val;
        }
    }
    function getNumberOfItemsToAllocate() public view returns (uint) {
        return numberOfItemsToAllocate;
