pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck2 {


    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    constructor ()
    {
        a[aLength] = ArrayItem(true);
        aLength++;
    }
    function updateArray() public {
        aLength++;
        a[aLength] = ArrayItem(false);
    }
    function updateArray2() public {

    }
}
