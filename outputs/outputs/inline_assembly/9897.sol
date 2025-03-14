pragma solidity ^0.8.0;
contract XulMutante {
    function g() virtual private pure {
        c();
    }
    function c() public pure {
    }
}
contract MutantMutantContract is XulMutant {
}
