pragma solidity ^0.8.0;
contract Counter {
    function setNewCurrent(uint x) internal {}
}

contract ContractWithInternalRevertedFunction {

    function internalFunction() internal { revert("reverted"); }
}
