pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        aLength = 1;
        a[aLength].b = false;
        aLength++;
    }
    function updateArray() public {
        ArrayItem memory a0;
        a0.b = true;
        a[aLength] = a0;
    }
}
contract TestDynamicArray {
    NonMutatedDynamicArrayTypeCheck public nonMutatedDynamicArrayTypeCheck;
    MutatedDynamicArrayTypeCheck public mutatedDynamicArrayTypeCheck;
    function testDynamoDBDynamicArrayTypeCheck() public {
        nonMutatedDynamicArrayTypeCheck.updateArray();
        if(nonMutatedDynamicArrayTypeCheck.aLength == 0 || nonMutatedDynamicArrayTypeCheck.a[0].b!= true) {
            revert("Non Mutated Dynamic Array Type Check Failed.\n");
        }
        nonMutatedDynamicArrayTypeCheck.updateArray();
        if(nonMutatedDynamicArrayTypeCheck.aLength == 1 || nonMutatedDynamicArrayTypeCheck.a[0].b!= true) {
            revert("Non Mutated Dynamic Array Type Check Failed.\n");
        }
        mutatedDynamicArrayTypeCheck.updateArray();
        if(mutatedDynamicArrayTypeCheck.aLength == 2 || mutatedDynamicArrayTypeCheck.a[0].b!= false) {
            revert("Mutated Dynamic Array Type Check Failed.\n");
        }
    }
}
