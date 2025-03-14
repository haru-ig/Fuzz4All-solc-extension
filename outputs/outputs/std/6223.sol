pragma solidity ^0.8.0;
import "https://github.com/solidity/solidity/blob/master/Security/ReentrancyGuard.sol";
contract MutatedGeneration extends ReentrancyGuard {
    uint p;
    function f() public returns (uint256) {
        p = 3;
        return p;
    }
}
