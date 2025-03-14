pragma solidity ^0.8.0;


function tryMatch(bytes memory input, bytes32 pattern) private pure returns (bool) {
    bytes32 result = 0;
    for(bytes memory thisPattern : pattern) {
        if((uint(char(thisPattern))) >= 16) {
            result |= bytes32(uint256(char(input[offset(thisPattern)]))));


        } else {
            return false;
        }
    }
    return result == pattern;
}
