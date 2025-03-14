pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4_ {
}



contract EquivalentMutatedDynamicArrayTypeCheck {
    EquivalentMutatedDynamicArrayTypeCheck4_Copy _copyInstance;
    EquivalentMutatedDynamicArrayTypeCheck4_ _contractInstance;

    constructor() {
        _copyInstance = new EquivalentMutatedDynamicArrayTypeCheck4_Copy();
        _contractInstance = new(EquivalentMutatedDynamicArrayTypeCheck4_)();
    }

    function f() private returns (uint) {
        uint storedLengthForIndex0 = _copyInstance.array.length[0];
        uint storedLengthForIndex1 = _copyInstance.array.length[1];

        StoredLength(storedLengthForIndex0);
        StoredLength(storedLengthForIndex1);


        uint storedLength = _contractInstance.length;

        StoredLength2(storedLength);
        return storedLength*2;
    }
}

contract StoredLength {
    uint public stored;
    uint public storedCopy;
    uint constant LARGE_NUM = 1e40;

    constructor (uint _v) {
        stored = _v;
        storedCopy = 0;
    }

    function StoredLength(uint v) internal returns(uint) {
        storedCopy = v;
        return LARGE_NUM + v;
    }
}
