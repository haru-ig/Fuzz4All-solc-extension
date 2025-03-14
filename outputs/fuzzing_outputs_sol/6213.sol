pragma solidity ^0.8.0;

interface Caller {
    function normalCall() internal;
    function externalCall() external;
    function internalCall() public;
}
contract Mutant6 {
    Caller c;
    constructor(Caller con) {
        c = con;
    }
    function test() public pure {

        mutant();

        if (isMutant()) {

            mutant();
        }
    }
    function mutant() private pure {
        c.normalCall();
    }
    function isMutant() private pure returns (bool) {
        return c.externalCall();
    }
}
