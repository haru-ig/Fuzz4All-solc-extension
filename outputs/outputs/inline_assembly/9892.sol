pragma solidity ^0.8.0;
interface XulMutante {
    function g() pure;
    function c();
}
contract MutantMutantInterface is XulMutante, MutantMutantContract {
}
contract TestContract is MutantMutantInterface {
    constructor() {
    }
    function test() public {
        XulMutante mutant;

        mutant.g();
        mutant.c();
    }
}
