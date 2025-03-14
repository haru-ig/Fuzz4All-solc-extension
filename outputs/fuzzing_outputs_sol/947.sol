pragma solidity ^0.8.0;
contract ModCall2 {
    fallback () payable external { }
    receive() external payable {}
}

contract Caller {
    ModCall _mod;

    function callMod() public {
        _mod.foo();
    }
}
