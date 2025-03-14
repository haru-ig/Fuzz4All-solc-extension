pragma solidity ^0.8.0;
import { Mutated } from './Mutated.sol';
contract MutatedLibrary {
    using Mutated for Mutated.value;
    function print() public pure {
        print1(value);
    }
    function print1(uint256 number) public pure {}
}
