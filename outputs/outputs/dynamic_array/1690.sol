pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrays11 {
    uint256[] elements;
    uint256 arrayLength;
    constructor() public {
        elements = new uint256[](200);
        arrayLength = 200;
    }
    function use() public {
        uint256 temp = elements[200];
        elements[200] = elements[0];
        elements[0] = temp;
    }
    function set() public {
        arrayLength = 250;
    }
    function use2() public {
        uint256 temp = elements[200];
        elements[200] = elements[0];
        elements[0] = elements[1];
        bool test = bool(temp == elements[1]);
    }
    function set2() public {
        arrayLength = 250;
    }
}
