pragma solidity ^0.8.0;
contract Caller
{
    function callSemanticallyEquivalent() public {
        semanticallyequivalent m = new semanticallyequivalent();
        bytes memory data = m.f();
        uint result = uint(0);
        assembly{result := sload(0x40)}
    }
}
