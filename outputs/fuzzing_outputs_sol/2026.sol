pragma solidity ^0.8.0;
contract Mutater11 {
    bool private _executed;
    function mutatedFunction(bool executed) public {
        _executed = executed;
        mutatedFunctionImpl(executed);
    }
    function mutatedFunctionImpl(bool executed) public pure {
        revert();
    }
}
