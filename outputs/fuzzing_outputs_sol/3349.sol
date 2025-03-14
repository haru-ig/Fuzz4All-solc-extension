pragma solidity ^0.8.0;
contract S {
	modifier onlyFallback() {
		require(msg.sender.call{value: address(this).balance}());
		_;
	}

    function() external payable onlyFallback {
        revert("test");
    }
}
contract Caller {
    function callWithFallback() public payable returns (bool success) {
        (success, ) = address(this).call{value: msg.value}("");
        return success;
    }
}
