pragma solidity ^0.8.0;
contract Math {


    function random(double min, double max) internal pure returns (double) {
        return uint192(keccak256(abi.encode(double(block.timestamp), uint64(block.difficulty), uint8(block.gaslimit), uint8(block.blockhash(block.number - 1))))) % ((uint64(max) - uint64(min)) + 1)) + uint64(min);
    }
}
