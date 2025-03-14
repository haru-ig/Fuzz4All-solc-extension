pragma solidity ^0.8.0;
contract Immutable {
    function immutable() public {
        if ( DryRunImmutable.immutable()!= 10 ) {

            throw;
        }
        uint current;
        if ( DryRunMutable.immutable()!= current ) {

            throw;
        }
    }
}
