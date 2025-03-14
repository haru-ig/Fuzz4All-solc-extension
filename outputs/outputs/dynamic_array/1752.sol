pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256[] public elements;
    uint256[] public elementsFinal;
    constructor (uint _maxElements) {
        elements = new uint256[](_maxElements);
    }
    function add() public {
        elements.push(elements.length);
    }
    function removeFirst() public {
        require(
            elementsInitial.push(elements.length),
            "Invalid value!"
        );
        elementsInitial.push(elementsInitial.length);
    }
    function removeLast() public {
        uint i;
        uint iMax = elements.length - 1;
        for (i = 0; i <= iMax; i++) {
            if (elements[i] == elementsFinal[i]) {
                delete elementsFinal[i];
            }
        }
    }
    function removeFirstLast() public {
        uint i;
        uint iMax = elementsInital.length - 1;
        for (i = 0; i <= iMax; i++) {
            if (elements[i] == elementsInitial[i]) {
                elementsInitial.push(elementsInitial[i]);
                delete elements[i];
            }
        }
        for (i = 0; i < iMax; i++) {
            elementsFinal.push(elements[i]);
        }
        uint j;
        uint jMax = elementsFinal.length - 1;
        for (j = elementsFinal.length - 1; j >= 0; j--) {
            if (elementsFinal[j] == elementsInitial[j]) {
                delete elementsFinal[j];
            }
        }
    }
}
