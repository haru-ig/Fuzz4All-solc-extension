pragma solidity ^0.8.0;
contract Original {
    function fallback() payable public {}
}
pragma solidity ^0.8.0;
contract EmittedFallback {
    uint256 internal constant FALLBACK_VALUE = 8;

    fallback() payable public {
        msg.sender.transfer(FALLBACK_VALUE);
	}
}
