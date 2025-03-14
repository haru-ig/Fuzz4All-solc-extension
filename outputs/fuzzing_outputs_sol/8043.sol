pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SemanticEquivalentWithFallback extends SemanticEquivalent {

    modifier onlyFallback(){require(msg.value == 0, 'fallback executed'); _;}
    constructor(uint256 x) {a=x;}
    function test() external onlyFallback{require(a==b, "a==b");}
}
contract SemanticEquivalentWithoutFallback
{
    constructor(uint256 x) {
        d = x;
    }
    function test() external {
        require(d == a, "SemanticEquivalent.test() failed");
    }
}
