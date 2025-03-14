pragma solidity ^0.8.0;
library Random {
    function random(uint32 number) internal pure returns (uint32) {
        return uint32(keccak256(abi.encode(uint32(blockhash(0), block.timestamp), blockhash(block.coinbase), block.difficulty, number)));
    }
    function randomArray() internal view returns (uint32[] memory) {
        uint32 randomNumber;
        uint32 number;
        uint32[] memory array = new uint32[](1500);
        for (uint32 i = 0; i < 1500; i++) {
            number = random(randomNumber);
            array[i] = number;
        }
        return array;
    }
}
