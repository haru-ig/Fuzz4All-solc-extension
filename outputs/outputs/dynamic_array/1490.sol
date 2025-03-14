pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType6 {
    uint256[][][50000000000] public array600000000000;
    string public message;
    event LogEvent(string _message);
    function Fatal() public {
        message = "test";
        for (uint i = 0; i < 60000000000; i++) {
            array600000000000[i] = [[[[1,2],[3],[4]],[[5]]]];
        }
    }
    function LogMessage() public returns (string memory) {
        return (message);
    }
}
