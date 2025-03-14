pragma solidity ^0.8.0;
library mutantSolidityLibrary {
    function redefine() pure public returns (uint) {
        contract contract_instance = new mutantSolidity68103512093Library();
        return contract_instance.change();
    }
}
