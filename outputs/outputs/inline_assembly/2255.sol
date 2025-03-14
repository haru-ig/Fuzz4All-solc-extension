pragma solidity ^0.8.0;
contract SemanticallyEquivalent
{
    uint d;
    address a;
    bool initialized;

    function doThat() public {
        d = d * d;
        a = msg.sender;
        initialized = true;
    }
}
