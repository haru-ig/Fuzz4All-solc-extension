pragma solidity ^0.8.0;
contract TestMutatedDynamicArrays {
    MutatedDynamicArrays public test;
    uint[1] private data;
    uint256[] public elements;
    address public myAddress;
    uint256[] public elementsInitial;
    function constructor() {
        elementsInitial = new uint256[](0);
        if (randomIndex(0, 100) == 1) {
            elements[0] = 1;
        } else {
            elements[0] = 2;
            elements[1] = 3;
            elements[2] = 4;
            elements[randomIndex(3, 9)] = 5;
        }
        elementsInitial = elements;
        data = new uint[1]();
        data[0] = 6;
        elements = elementsInitial;
    }
    function removeFirst() public {
        elements = elementsInitial;
        elementsInitial = new uint256[](0);
    }
    function removeLast() public {
        elements = elementsInitial;
        elementsInitial = new uint256[](0);
        elements[1] = 2;
    }
    function removeAll() public {
        elements = elementsInitial;
        elementsInitial = new uint256[](0);
    }
    function randomIndex(uint lowerBound, uint upperBound) public pure returns (uint index) {
        uint randomInt = uint(keccak256(abi.encodePacked(blockhash(block.number - 1))))) % (upperBound - lowerBound + 1) + lowerBound;
        return randomInt;
    }
}

pragma solidity ^0.8.0;
contract TestMutation {
    MutatedDynamicArrays public test;
    uint[1] private data;
    uint256[] public elements;
    uint256[] public middleElements;
    uint256[] public elementsInitial;
    uint256[] public middleElementsInitial;
    uint256[] public elementsAdded;
    uint256[] public elementsAddedInitial;
    address public myAddress;
    uint256[] public elementsInitial2;
    function constructor() {
        elementsInitial = new uint256[](0);
        elementsAddedInitial = new uint256[](0);
        middleElementsInitial = new uint256[](0);
        uint256 elementsArrayIndex;
        uint256 initialIndex;
        if (randomIndex(0, 25)[1] == 0) {
            elementsArrayIndex = randomIndex(1, elements.length);
