pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck3 {
    struct ArrayItemNoInitial { bool b; }
    ArrayItemNoInitial[] public a;
    uint public aLength;
    uint public i;
    address addr;
    bytes32 testBytes;
    constructor ()
    {
        addr = msg.sender;
        aLength = 1;
        ArrayItemNoInitial memory a0;
        a0.b = false;
        a[aLength] = a0;
        a[aLength].b = true;
        i = 1;
        i = aLength = i + 1;
        testBytes = a[aLength].b.toEthSignedMessageHash();
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
        aLength = i;
        aLength--;
        aLength = a.length - 100;
    }
    function checkHash(bytes32 hash) public {
        if (a[aLength].b.toEthSignedMessageHash() == hash && addr == a[aLength].b) {
            return;
        } else {
            if (addr == a[aLength].b) {
                aLength-=100;
            }
            delete a[aLength];
        }
    }
}
