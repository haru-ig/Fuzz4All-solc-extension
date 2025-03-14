pragma solidity ^0.8.0;
contract Convert {
    function stringToInt(string memory inString) public pure returns (int)
    {
        bytes memory input = bytes(inString);
        bytes memory buffer = new bytes(input.length);
        uint index=0;
        while(input[index]!= 0) {
            buffer[index] = input[index];
            index++;
        }
        return uint160(uint256(buffer));
    }
}
