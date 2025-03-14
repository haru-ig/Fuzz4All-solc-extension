pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint j;
    uint n;
    uint i;
    constructor ()
    {
        n = 0;
        n++;
        i = 0;
        i++;
        i++;
        j = n;
        j = n;
        i = 1;
        i++;
        n++;
        i = 2;
        j -= 1;
        i++;
        n++;
        n++;
        j = 3;
        j -= n;
        j -= n;
        i = 4;
        i += i;
        n++;
        i = 5;
        j += i;
        n++;
        i = 6;
        j -= j;
        n++;
        i = 7;
        j = j * j;
        n++;
        i = 8;
        i += i;
        j += n;
        n++;
        i = 9;
        j--;
        j--;
    }
}
