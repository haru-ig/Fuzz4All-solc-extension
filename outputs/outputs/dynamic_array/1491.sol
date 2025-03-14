pragma solidity ^0.8.0;
contract SemanticsEquivalentDynamicArrayType2 {
    uint256[4554354332 * 32] public newArray;
    string public message;
    event LogEvent(string _message);
    function Fatal() public {
        message = "test";
        for (uint i = 0; i < 4554354332; i++) {
            for (uint j = 0; j < (32 * 4554354332); j++) {
                newArray[j] = 45543543332;
            }
        }
    }
    function LogMessage() public returns (string memory) {
        return (message);
    }
}
