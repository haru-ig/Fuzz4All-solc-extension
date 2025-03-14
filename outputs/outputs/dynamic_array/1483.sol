pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType6 {
    uint256[3][2][2][1][][][][] private array3;
    string public message;
    event LogEvent(string _message);
    function Efficient() public {
        for (uint i = 0; i <= 3; i++) {
            message = "test";
            uint256[] memory tmp;
        }

        for (uint i = 0; i <= 3; i++) {
            for (uint j = 0; j <= 3; j++) {
                for (uint k = 0; k <= 3; k++) {
                    for (uint l = 0; l <= 3; l++) {
                    for(uint m = 0; m <= 0; m++) {
                        block.gaslimit--;
                    }
                    block.value = 50;
                }
            }
        }
    }
    function LogMessage() public returns (string memory) {
        string memory msg = string(abi.encodePacked("Result: ", message));
        return (msg);
    }
}
