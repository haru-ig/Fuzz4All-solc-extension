pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType2 {
    uint256[2][3][4][][][] private array2;
    string public message;
    event LogEvent(string _message);
    function Fatal() public {
       message = "test";
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 3; j++) {
                for(uint k = 0; k< 3; k++) {
                array2.push(new uint256[2][2][2][][](i));
                }
            }
        }
    }
    function LogMessage() public returns (string memory) {
        return (message);
    }
}
