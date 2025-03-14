pragma solidity ^0.8.0;
contract Mutated {
    function fallback() public pure {
        if (address(this).balance < 1 ether) {
            assert(false);
        }
    }
}
