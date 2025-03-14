pragma solidity ^0.8.0;
contract Mutant3Mutator {
    function mutantThreeFallback() public {
        Mutant3Fallback fallback = Mutant3Fallback(msg.sender);
        fallback.payableFunction();
    }
}

pragma solidity ^0.8.0;
contract Mutant3MutatorAndCall {
    function mutantThreeFallback() public {
        Mutant3Fallback fallback = Mutant3Fallback(msg.sender);
        fallback.payableFunction.call{value: msg.value}("");
    }
}
