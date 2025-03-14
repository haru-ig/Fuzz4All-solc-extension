pragma solidity ^0.8.0;
contract MutatedDynamicArrays10 {
    uint256[] elements;
    uint256[] mut elements2;
    uint256[] elements3;
    uint256[] mut elements4;
    uint256[] elements5;
    constructor() public {
        elements = new uint256[](3);
        elements[0] = 100;
        elements[1] = 100;
        elements[2] = 100;
        elements2 = new uint256[](3);
        elements2[0] = 100;
        elements2[1] = 100;
        elements2[2] = 100;
        elements3 = new uint256[](3);
        elements3[0] = 100;
        elements3[1] = 100;
        elements3[2] = 100;
        elements4 = new uint256[](3);
        elements4[0] = 100;
        elements4[1] = 100;
        elements4[2] = 100;
        elements5 = new uint256[](3);
        elements5[0] = 100;
        elements5[1] = 100;
        elements5[2] = 100;
    }
    function modify() public {
        elements[1] += 1;
        elements2[1] += 1;
        elements3[1] += 1;
        elements4[2] += 1;
        elements5[2] += 1;
    }
}
