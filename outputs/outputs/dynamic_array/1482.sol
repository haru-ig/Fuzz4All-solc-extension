pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType4 {
    uint256[][2222] private array222;
    string public message;
    event LogEvent(string _message);
    function Fatal() public {
        message = "test";
        for (uint i = 0; i < 2222; i++) {
             uint256[2222] memory a;
            a[i] = 1;
        }
    }
    function LogMessage() public returns (string memory) {
        return (message);
    }
}
