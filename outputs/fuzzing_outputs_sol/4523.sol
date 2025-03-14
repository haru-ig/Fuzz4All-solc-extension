pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    function mutate(int x, uint n) public pure {
        require (n.mod(x).eq(0));
        int z = x * n;
        revert(z);
    }
}
