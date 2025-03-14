pragma solidity ^0.8.0;
contract CallerExample {
    function receive() external payable {
    }

    function success() public {
        require(msg.value == 0);
        revert();
    }

    function fail() public {
        require(msg.value > 0);
        throw;
    }
}
