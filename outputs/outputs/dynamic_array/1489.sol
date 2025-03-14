pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType5 {
    uint256[45543543332] public array45543543332;
    string public message;
    event LogEvent(string _message);
    function Fatal() public {
        message = "test";
        for (uint i = 0; i < 45543543332; i++) {
            array45543543332[i] = 1;
        }
    }
    function LogMessage() public returns (string memory) {
        return (message);
    }
}
