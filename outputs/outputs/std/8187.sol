pragma solidity ^0.8.0;
contract Random {
    function randomInt(uint lower, uint upper) public pure returns(uint) {
        return uint(keccak256(abi.encodePacked(blockhash(block.number - 1), blockhash(block.number - 2), blockhash(block.number - 3), blockhash(block.number - 4), blockhash(block.number - 5)))) % (uint(upper) - uint(lower)) + uint(lower);
    }
    function randomArray(uint[] memory values, uint min, uint max) public pure returns(uint[]) {

        uint[] memory new_values = new uint[](values.length);
        for(uint j = 0; j < values.length ; j++) {
            new_values[j] = min;
        }

        for(uint i = 1; i < values.length ; i++) {
            new_values[i] = uint(keccak256(abi.encodePacked(blockhash(block.number - 1), blockhash(block.number - 2), blockhash(block.number - 3), blockhash(block.number - 4), blockhash(block.number - 5)))) % (max - min) + min;
        }
        return new_values;
    }
}
