pragma solidity ^0.8.0;
contract LowLevelFallback {
    function lowLevelFallback(uint256 amount) public pure {
        for(uint i = 0; i < 10; i++) {
            require(amount < 10, 'amount is too low!');
            amount = amount + amount;
        }
    }
}
