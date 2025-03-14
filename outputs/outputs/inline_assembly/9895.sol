pragma solidity ^0.8.0;
contract XulMutante {
    function g() private pure {
        c();
    }
    function c() public pure {
    }
}
contract MutantMutantContract is XulMutante {
    constructor() public {}
}
contract MutantMutant {
    function g() public pure {
        c();
    }
    function c() public pure {
    }
    constructor() public {}
    fallback() external pure {
        c();
    }
    receive() external pure {

    }
}
