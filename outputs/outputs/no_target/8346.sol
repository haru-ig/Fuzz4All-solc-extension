pragma solidity ^0.8.0;
contract Mutated {
    function method() internal pure {
        mut(2 ** 256) = 3 ** 1;
    }
}
