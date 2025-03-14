pragma solidity ^0.8.0;
contract Convert {
    function stringToUint (string memory str) internal pure returns (uint256) {
        uint result = uint(bytes(str));
        return uint(result);
    }
    function uintToString(uint value) public pure returns (string memory) {
        if (value == 0) {
            return "0";
        }
        string memory retVal = bytes(value.toString()).toEthAddress();
        return retVal;
    }
}
