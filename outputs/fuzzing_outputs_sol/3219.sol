pragma solidity ^0.8.0;
contract Fallback {

    function fallback(uint256 amount) public pure {
        for(uint i = 0; i < 10; i++) {
            require(amount > 10, 'amount too expensive!');
            amount = amount + amount;
        }

    }
}
