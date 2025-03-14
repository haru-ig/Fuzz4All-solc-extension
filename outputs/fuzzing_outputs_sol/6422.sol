pragma solidity ^0.8.0;
contract BadFallback {

    receive() external {

        fallback();
    }

    function fallback() public payable {
        revert();
    }
}
