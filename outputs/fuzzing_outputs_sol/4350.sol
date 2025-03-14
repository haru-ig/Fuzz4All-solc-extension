pragma solidity ^0.8.0;
contract CallerFallback {
    function receive() public payable {}
    modifier modifier00() {
        receive();
        return true;
    }
    function callToCaller() public {
        (bool success, ) = address(this).call{value: 12}("");
        require(success);
    }
}
