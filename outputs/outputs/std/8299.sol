pragma solidity ^0.8.0;
contract ArrayOperations {
    uint256[ ] public array;
    function modifyRandom() public {
        uint256 randomNum = uint256(keccak256(abi.encodePacked(block.timestamp)));
        for (uint256 i = 0; i < 10; i++) {
            array[i] = randomNum;
        }
    }
    function printElements() public view returns (uint256[ ]) {
        return array;
    }
}
