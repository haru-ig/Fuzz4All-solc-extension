pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck3 {
    struct ArrayItem { bool b; }
    ArrayItem[][][] public a;
    uint public aLength;
    uint public i;
    address addr;
    constructor ()
    {
        addr = msg.sender;
        aLength = 1;
        ArrayItem[] memory a0 = new ArrayItem[](2);
        a0[0] = ArrayItem(true);
        a0[1] = ArrayItem(true);
        a[aLength] = a0;
        a[aLength][0].push(a0[0]);
        a[aLength][1].push(a0[1]);
        aLength = i;
        i = aLength + 1;
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
        aLength = i;
    }
}
