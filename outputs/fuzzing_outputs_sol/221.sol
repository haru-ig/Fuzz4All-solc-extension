pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback3 {
    function executeCallWithoutData() public payable {
        fallbackTo(address(this).balance);
    }
}
