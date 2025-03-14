pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck7 {
    struct Inner { bool b; }
    struct ArrayItem { address i; bool b; bool s; Inner i; }
    mapping (address => ArrayItem) array;
    uint x;
    uint y;
    uint z;
    uint[] a;
    uint length;
    uint lengthZ;
    uint[] b;
    uint elementIndex;
    uint zLength;
    uint elementIndexZ;
    uint arrayIndex;
    uint elementLength;
    uint zLengthCopy;
    uint xlength;
    uint xLengthCopy;
    constructor ()
    {
        zLength = (100000 * (z / xlength));
        arrayIndex = 0;
        elementIndex = 0;
        elementLength = (x / zLength);
        elementIndexZ = 0;
        zLengthCopy = 1;
        xlength = 1;
        xLengthCopy = 1;
    }
}




pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck8 {
    function main() public pure {

    }
}




pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck9 {
    struct ArrayItem { bool b; bool j; uint n; uint k; uint m; uint z; }
    struct ArrayItem2 { bool b1; bool b2; uint n1; uint n2; uint m1; uint m2; uint z1; uint z2; }
    ArrayItem array1[2] = [ArrayItem(true, true, 3, 5, 7, 0), ArrayItem(false, false, 1, 2, 3, 4)];
    ArrayItem2 array2[2][3] = [ArrayItem2(false, false, 1, 1
