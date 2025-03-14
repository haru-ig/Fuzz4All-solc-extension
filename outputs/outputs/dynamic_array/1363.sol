pragma solidity ^0.8.0;
contract SeeminglyEquivalentMutatedDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public x;
    uint[] public a;
    uint public length;
    uint public z;
    uint public m;
    uint public lengthNew;
    uint[] public b;
    uint public nLength;
    uint public lengthCopy;
    constructor ()
    {
        lengthCopy = 1;
        x = 0;
        x++;
        m = 0;
        length = 1;
        a = new uint[](2);
        a[0] = 0;
        a[1] = 0;
        length++;
    }
}
