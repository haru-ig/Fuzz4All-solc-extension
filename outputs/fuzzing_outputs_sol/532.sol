pragma solidity ^0.8.0;
contract CallerFallbackTest2 {
    address public owner;
    uint256 public constant n = 3;
    constructor() {
        owner = msg.sender;
    }
    modifier _reclaimTokens(address whoToReclaimFrom, uint256 amount) {
        if (address(this).balance >= amount) {
            whoToReclaimFrom.transfer(amount);
            balances[whoToReclaimFrom] += balances[address(this)];
            balances[address(this)] = 0;
        } else throw;
        _;
    }
    receive() external payable {
        _;
    }

        fallback(uint256 amount)
        public
        onlyOwner
        _reclaimTokens(msg.sender, amount)
    {
    }
}
