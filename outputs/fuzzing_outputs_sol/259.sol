pragma solidity ^0.8.0;
contract CallMethod {
    function call1() public nonpayable {
        CallFallbackFunctionTwoPlusFallback3 contract2PlusFallback = new CallFallbackFunctionTwoPlusFallback3();
        address payable contract2 = address(contract2PlusFallback);
        contract2.call{value: 1 ether}("");
    }
}
