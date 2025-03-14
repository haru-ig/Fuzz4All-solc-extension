pragma solidity ^0.8.0;
contract SemanticsArrayInitializer {
    uint256[] public a;
    uint256 constant arraySize = 8;
    uint256 element1;
    uint256 element2;
    uint256 element3;
    uint256 element4;
    uint256 element5;
    uint256 element6;
    uint256 element7;
    uint256 element8;
    uint256[] memAddress = new uint256[](arraySize);

    constructor()
    {
        for (uint256 i = 0; i < arraySize; ++i) {
            a[i] = uint256(-1);
            emit NewElement(i);
        }
        element1 = a[1];
        element2 = a[2];
        element3 = a[3];
        element4 = a[4];
        element5 = a[5];
        element6 = a[6];
        element7 = a[7];
        element8 = a[7+1];
    }

    event NewElement(uint256 i);
}
