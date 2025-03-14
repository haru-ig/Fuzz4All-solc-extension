pragma solidity ^0.8.0;
contract MutateMutatedAndFallbackFunction {
    function mutateMutated(uint x) public { x += 5; }
    function mutateAndFallback(uint x) public { x += 5; x -= 5; }
    function fallback() external { x += 5; x -= 5; }
}
