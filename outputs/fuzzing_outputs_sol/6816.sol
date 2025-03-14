pragma solidity ^0.8.0;
contract Solidity {
}

contract Solidity {
}
contract Caller {
    function callFallbackAndReturn(Solidity c) external returns (uint256 balance) {
        c.payableFallback() payable {
            balance = 10;
        }
    }
    function callNonFallbackAndReturn(Solidity c) external returns (uint256 balance) {
        balance = c.balance();
    }
    function callFallbackWithoutReturn(Solidity c) external payable {
        c.payableFallback();
    }
    function callNonFallbackWithoutReturn(Solidity c) external {
        c.balance();
    }
}
