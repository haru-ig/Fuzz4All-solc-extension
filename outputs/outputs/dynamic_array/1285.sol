pragma solidity ^0.8.0;
contract MutatedDynamicSizedArrayTypeCheck {
    struct ArrayItem {
        bytes b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        a[aLength] = ArrayItem("0xabc");
        aLength++;
    }
    function updateArray() public {
        aLength--;
        a[aLength].b = "new value".bytes;
    }
}
pragma solidity ^0.5.0;
