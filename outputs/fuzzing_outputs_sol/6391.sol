pragma solidity ^0.8.0;
contract Mutant4FallbackFunction {
    function callFallbackFunction(address payable addr) public pure {
        uint a = 2 ** 20;
        require(2 < 6, "Call");
        emit ContractDeployed(addr);
    }
}
