pragma solidity ^0.8.0;
library Mutator {


    function mutate(address contractAddress) public virtual {
        (address) (contractAddress).call("");
    }
    constructor() {
        mutate(contract(0));
    }
}
