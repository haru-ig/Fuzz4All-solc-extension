pragma solidity ^0.8.0;
contract Original {
    uint256 public constant MAX_AMOUNT = 1000000000000000;
    Mutator public mutator;
    mapping(address => uint256) public balanceOf;

    constructor(address _mutator) {
        mutator = Mutator(_mutator);
        balanceOf[address(this)] = 1001;
    }

    fallback() external payable {
        uint256 ethAmount = msg.value;
        require(ethAmount >= maxAmount(), "Cannot pay more than max amount");
        balanceOf[msg.sender] = balancesOf[msg.sender] + ethAmount;
        mutator.transfer(ethAmount);
    }

    function maxAmount() public view returns (uint256) {
        return MAX_AMOUNT;
    }
}

contract MutatorFallback {
    Mutator public delegate;

    constructor(address _mutator) {
        delegate = Mutator(_mutator);
    }

    fallback() external {
        uint256 ethAmount = delegate.balanceOf[msg.sender];
        require(ethAmount > 4000 && msg.value >= 1000, "Please use 4000 and more Ether");
        msg.sender.transfer(ethAmount / 2);
    }
}
