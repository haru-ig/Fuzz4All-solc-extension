pragma solidity ^0.8.0;

contract MutatedCopyofArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        a[aLength] = ArrayItem(false);
        aLength++;
    }
    function copyAndUpdate() public {
       ArrayItem aTemp = a[aLength];
       a[aLength].b = true;
       aLength++;
    }
}

contract MutatedPushToArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    function pushArray() public {
        a[aLength].b = true;
        aLength++;
    }
}
pragma solidity ^0.8.0;
contract MutatedPushCopyToArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    function pushAndCopyArray() public {
        a[aLength].b = true;
        aLength++;
        a[aLength].b = true;
        a[aLength].b = true;
        a[aLength].b = true;
        aLength++;
    }
}
