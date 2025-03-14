pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5Modifed {
    constructor(uint256[] storage a) public { }
    function setArraySize() public {
        uint256[] storage array = new uint256[](0);
        a = array;
        a[3] = 1;
        delete array[0];
        a[0] = 4;
        a[4] = 6;
        delete array[0];
        a[3] = 7;
        a[10] = 10;
        delete array[0];
        a[1] = 9;
        a[10] = 11;
        delete array[0];
        a[1] = 8;
        a[2] = 2;
        delete array[0];
        a[10] = 13;
        delete array[0];
    }
}
