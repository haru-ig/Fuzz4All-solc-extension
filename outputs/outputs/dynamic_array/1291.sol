pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem memory tmp = ArrayItem(0, true);
    ArrayItem[] public a;
    uint public aLength;
    constructor () public {
        aLength = 1;
        ArrayItem[] memory b = new ArrayItem[](aLength);
        for (uint idx = 0; idx < aLength; ++idx) {
            b[idx].b = true;
        }
        a = b;
    }
    function updateArray() public {
        aLength++;
        a[aLength] = tmp;
    }
}
