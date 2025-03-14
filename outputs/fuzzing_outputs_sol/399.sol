pragma solidity ^0.8.0;
contract BetterCaller {
    receive() public payable {}
    fallback () public {
        gas;
        if (block.timestamp <= 10000000000) {
            address(3).balance;
        }
    }
}

contract BadFallback {
    receive() external payable {}
    fallback () {}
}

contract GoodCaller {
    receive() public payable {}
    fallback () public {}
}

contract GoodFallback {
    receive() external payable {}
    fallback () external {}
}
