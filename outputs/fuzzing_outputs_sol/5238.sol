pragma solidity ^0.8.0;
contract Mutator5
{
        function testCallData(bytes memory input) public pure returns (bytes memory) {
                bytes memory result = new bytes(32);
                for (uint i = 0; i < input.length; ++i) {
                        result[i] = input[i] ^ 8;
                }
                return result;
        }
        event E(bytes calldata data);
        fallback() external {
                emit E(testCallData("Test"));
        }
}
