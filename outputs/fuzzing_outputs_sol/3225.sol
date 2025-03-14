pragma solidity ^0.8.0;
contract HighLevelFallback {
    fallback function highLevelFallback(uint256 amount) pure public returns (uint256) {
        for(uint i = 0; i < 10; i++) {
            require(amount < 10, 'amount is too low!');
            amount = amount + amount;
        }
        return amount;
    }
}
