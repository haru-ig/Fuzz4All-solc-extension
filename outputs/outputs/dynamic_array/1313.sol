pragma solidity ^0.8.0;
contract EquivalentSemanticallyMutatedDynamicArrayTypeCheck3 {
    bool[] a;
    uint public length;
    event ItemAdded (uint e, bool b);
    constructor (bool checkIfEqual)
    {
        length = 1;
        a[0] = checkIfEqual;
        emit ItemAdded(0, checkIfEqual);
        length = 2;
        a[0] =!checkIfEqual;
        emit ItemAdded(0,!checkIfEqual);
        length = 3;
        for (uint i = 0; i < a.length; i++) {
            a[i] =!checkIfEqual;
        }
        length = 4;
    }
}
