pragma solidity ^0.8.0;
contract A {
    function mutated(uint a) public returns (uint) {

        assembly {
            let x := add(a, 1)
        }
        return x;
    }
}
