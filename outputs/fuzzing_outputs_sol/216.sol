pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback3 {
    function callFallbackFunctionContract() external returns (bool) {
        address returnAddress = CallFallbackFunction3Contract.fallback(address(uint256(0x00)), address(uint256(0x00)), address(uint256(0x00)));
        bytes callData;
        assembly {
            callData := mload(0x40)
        }
        returnAddress.call{value: msg.value}{callData}();
        return true;
    }
}
