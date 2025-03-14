pragma solidity ^0.8.0;
import './IToken.sol';
contract MyContract2 {
    IToken public token;
    constructor()
        token(new IToken())
    {
    }
    function get() public view returns (uint) {

        token.testContract();
        uint256  x;
        x = 10**10;
        return x;
    }
}
