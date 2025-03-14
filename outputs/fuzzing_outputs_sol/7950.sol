pragma solidity ^0.8.0;
contract Caller
{
    function simpleCall(address x) public {
        assert(x.call{value: msg.value} returns (0));
    }

    function simpleSelfCall(address x) public {
        assert(address(x).call{value: msg.value}() == address(x));
    }

    function nonPayableCall(address x) public returns (uint storedValue) {
        storedValue = x.call{value: 1 ether} returns (0);
    }

    function lowLevelCall(address x) public returns (uint storedValue) {
        storedValue = (uint(address(x)).call{value: msg.value} returns (0));
    }
}
