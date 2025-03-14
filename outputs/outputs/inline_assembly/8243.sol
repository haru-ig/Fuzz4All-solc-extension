pragma solidity ^0.8.0;
contract InlineAssembly3{
    function test() public pure returns(uint, bytes memory) {
        assembly {
            let memoryLength := mload(0) / keccak256(mload(memory))
            let memoryAddress := add(memory, 32)
            let memoryContent := mload(memoryAddress)

            let dataLength := length(memoryContent) / 32
            let dataAddress := add(memoryContent, 32)
            let dataContent := mload(dataAddress)

            assign(memoryAddress, memoryContent)
            assign(dataAddress, dataContent)

            text := memoryAddress
        }
    }

    function assign(uint memoryAddress, bytes memory memoryContent) private pure {
        mstore(memoryAddress, memoryContent)
    }
}
