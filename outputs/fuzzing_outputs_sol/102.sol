pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThreePlusReceiveMutated {
    function getData(uint x) public returns (uint y) {
        y = 2;
        y = y + x;
        y = y + msg.sender;
    }
    fallback() external payable { }
    receive() external payable {}
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionMutated {
    constructor() { }
    fallback() external payable {}
    function getData(uint x) public returns (uint y) {
        y = 2;
        y = y + x;
        y = y + msg.sender;
    }
}

pragma solidity ^0.8.0;
contract My Calls CallAndFallbackFunctionThreePlusReceiveExample {
    modifier onlyFallbackFunction {
        require(keccak256(abi.encode(msg.data)) ==
                 keccak256(abi.encodeWithSignature(fallbackFunction())),
                 "Can't call fallback function");
        _;
    }
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    fallback() external onlyFallbackFunction payable { }
    receive() external payable {}
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionExample {
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    fallback() external payable { }
}
