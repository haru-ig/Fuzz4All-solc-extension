pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample {
    struct Item {
        uint256 id;
        string name;
    }
    Item[] internal itemData;
    mapping(address => uint256) public userBoughtIdMapping;
    uint16 internal currentIndex = 0;
    Item[] internal reversedArray;

    function main() public {
        Item[] memory temp = new Item[](itemData.length);
        for (uint8 x = 0; x < itemData.length; x++) {
            temp[x] = itemData[x];
        }
        itemData = temp;
        reversedArray = itemData;
        while (currentIndex!= 0) {
            reversedArray.push(itemData[currentIndex - 1]);
            currentIndex--;
        }
        currentIndex = itemData.length - 1;
        while (currentIndex > 0) {
            reversedArray.push(itemData[currentIndex]);
            currentIndex--;
        }
        reversedArray.push(Item(1, "1"));
        uint256 value = 1;
        while (value == 1) {
            value =
