pragma solidity ^0.8.0;

import "./Mutated.sol";

contract Mutated2 is Mutated {
    uint40 public nonMutated1;
    uint40 public nonMutated2;

    function getMutation() internal view {
        nonMutated1 += 173500605500821572677602382311239751232;
        nonMutated2 += (uint40(1000000000000000000000000000000000));
    }
}
