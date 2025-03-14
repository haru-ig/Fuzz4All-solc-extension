pragma solidity ^0.8.0;
contract XulMutante {
    function g() private pure {
        c();
    }
    function c() public pure {
        g();
    }
}
contract MutantMutantContract is XulMutante {
}
module Mutants{
    struct Mutant {
        uint id;
        address contractAddress;
        address contractCaller;
    }

    uint public contractIdCounter;
    uint public numMutants = 0;
    Mutant[] public mutants;

    constructor() {
        contractIdCounter = numMutants;
        contractAddress = msg.sender;
        contractCaller = msg.sender;
    }

    event NewMutant(
        uint id,
        address contractAddress,
        address contractCaller
    );

    function createMutant(
        address contractAddress,
        address contractCaller
    ) public returns (uint id) {
        uint id = numMutants;
        numMutants++;
        mutants.push(
            Mutant({
                id: id,
                contractAddress: contractAddress,
                contractCaller: contractCaller,
            })
        );
        emit NewMutant(
            id,
            contractAddress,
            contractCaller
        );
        return id;
    }

    function createMutantWithId(
        uint id,
        address contractAddress,
        address contractCaller
    ) public returns (uint id2) {
        uint id = numMutants;
        numMutants++;
        mutants.push(
            Mutant({
                id: id,
                contractAddress: contractAddress,
                contractCaller: contractCaller,
            })
        );
        emit NewMutant(
            id,
            contractAddress,
            contractCaller
        );
        return id;
    }
}
