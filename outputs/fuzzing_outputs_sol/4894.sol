pragma solidity ^0.8.0;
contract Mutator3 {
    constructor() {
        Mutator2(contract2).payWithFallback(contract2);
    }
}
