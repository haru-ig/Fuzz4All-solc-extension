pragma solidity ^0.8.0;
contract Mutater3 {
    function mutatedFunction() public {
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public pure {
        Mutater1.mutatedFunction();
    }
}
