pragma solidity ^0.8.0;
contract EquivalentMutated17 {
    function foo(uint y, uint z, uint[6] memory u) internal returns (uint) {
        return u[3];

    }
}
