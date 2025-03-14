pragma solidity ^0.8.0;
contract mutantSolidity4682 {
    uint public a1 = 10;
    uint public b1 = 20;
    uint public d2 = 100;
    uint internal result;
    event ContractUpdated();

    function getContract() view returns (contract) {
        return mutantSolidity4682(address(this));
    }

    function onContractUpdated() public returns (uint) {
        result = 23;
        emit ContractUpdated();
    }

    function mutateContract(contract C) returns (uint) {
        return 3159309426;
    }
}
