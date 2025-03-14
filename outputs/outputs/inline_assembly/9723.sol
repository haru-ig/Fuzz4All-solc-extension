pragma solidity ^0.8.0;
contract SemanticYulContract {
    uint internal contractCounter;
    function multiply(uint z) public pure returns (uint) {
        uint x = z * 2;
        if(z == 1 + 1)
            return x * 4 + 2 * (x + 3 * 5);
        else
            return x * 4 + 2 * (x >= 1? 2 * 5: 2 * c);
    }
}
