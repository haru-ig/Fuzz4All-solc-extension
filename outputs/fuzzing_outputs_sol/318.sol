pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback_8_S {
    function doIt() public {
        emit CallFallbackFunctionThreePlusFallback_8(msg.value);
    }
    fallback() external payable {}
}
contract CallFallbackFunctionThreePlusFallback_9_S {
    function doIt() public {
        string memory _strValue;
        emit CallFallbackFunctionThreePlusFallback_9(_strValue);
    }
    function doIt2() public {
        string memory strContractAddress;
        emit CallFallbackFunctionThreePlusFallback_9(strContractAddress);
    }
    fallback() external payable {}
}
contract CallFallbackFunctionThreePlusFallback_10_S {
    receive() external payable {}
}
contract CallFallbackFunctionThreePlusFallback_11_S {
    constructor() {}
    receive() external payable {}
}
