pragma solidity ^0.8.0;
contract MutatedCallWithFallback{
    event LogMutated();

    function() external {
        require(false);
    }

    function fallback() public payable {
    }
}

pragma solidity ^0.8.0;
contract MutatedCallWithFallbackMutant is AbstractCallWithFallback {

    function() external {
        require(false);
    }

    function onFallback(address) public virtual payable {
        LogMutated();
    }

    function fallback() public {
        onFallback(msg.sender);
    }
}
