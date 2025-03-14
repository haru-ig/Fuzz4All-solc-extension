pragma solidity ^0.8.0;
contract MutatedNonArrayArrayAssignment {
    ArrayItem[] public a;
    uint public aLength;
    ArrayItem myA[10];
    ArrayItem public b;
    constructor ()
    {
        a = new ArrayItem[](10);
        a = new ArrayItem[](50);
        a[1].b = true;
        aLength = 10;
        aLength = 50;
        myA[0].b = true;
    }
    function update() public {
        aLength++;
        a[aLength].b = true;
        aLength++;
        a[aLength].b = true;
        aLength++;
        a[aLength] = myA[1];
        aLength++;
        b.b = true;
    }
}
