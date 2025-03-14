pragma solidity ^0.8.0;
contract Mutater432 {

    Mutater431 public mutated1;
    uint public stateBefore;
    constructor(Mutater431 _mutated1) {
        mutated1 = _mutated1;
        stateBefore = uint(address(mutated1));
    }

    fallback() external payable {
        Mutater431 storage storageMutated1 = mutated1;
        mutated1;
        stateBefore = uint(address(mutated1));
        storageMutated1;
        caller;
    }
    receive() payable external {
        Mutater431 storage mutated1Storage = mutated1;
        mutated1;
        stateBefore = uint(address(mutated1));
        mutated1Storage;
        caller;
    }
}

pragma solidity ^0.8.0;
library Mutater433 {

    function mutated(Mutater425 memory _mutator) {
        address payable mutated = address(address(mutator));
        return;
    }
}
