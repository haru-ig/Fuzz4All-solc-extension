pragma solidity ^0.8.0;
contract XulMutante {
    function g() private pure {
        c();
    }
    function c() public pure {
    }
}
contract MutantMutantContract is XulMutante {
}
