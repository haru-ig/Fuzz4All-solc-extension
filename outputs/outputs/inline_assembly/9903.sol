pragma solidity ^0.8.0;
contract XulMutante {
    function g() public pure {
    }
    function c() public pure {
    }
    function f() private pure {
        c();
    }
}
contract MutantMutantContract is XulMutante {
}
