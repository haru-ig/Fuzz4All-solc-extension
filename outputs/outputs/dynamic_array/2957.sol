pragma solidity ^0.8.0;
contract MutatingEquivalence_FixedArray {
    uint[] x;
        constructor () public {
        x = [8];
    }
        function m() public {
       x[0] = 5;
    }
        function s() public view returns (uint[]) {
        return x;
    }
}
