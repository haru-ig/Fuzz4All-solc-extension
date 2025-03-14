pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint x;
    uint z;
    uint m;
    uint length;
    uint lengthNew;
    uint[] b;
    uint nLength;
    uint lengthCopy;
    constructor ()
    {
        lengthCopy = 1;
        x = 0;
        length = 3;
        lengthNew = length + length;
        m = 0;
        a = new uint[](2);
        a[0] = 0;
        length++;
        length++;
    }
    function mutatedCall2() public pure returns (bool)
    {
        return true;
    }
    function semanticMutatedCall2() public pure returns (bool)
    {
        return true;
    }
    function mutatedCall1() public returns (bool)
    {
        return true;
    }
    function semanticMutatedCall1() public returns (bool)
    {
        return true;
    }
}
