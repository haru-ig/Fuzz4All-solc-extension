pragma solidity ^0.8.0;
contract Convert {
    address constant zeroAddress = 0x0;
    function parseInt(string memory str) public pure returns (uint256) {
        if (bytes(str).length > 0 && (str[0] >= '0' && str[0] <= '9')) {
            uint retLength = 0;
            for (uint i = 0; i < bytes(str).length; i++) {
                retLength = retLength * 10 + (uint(bytes(str)[i]) - 48);
            }
            return retLength;
        }
        return 0;
    }
    function int2Str(uint256 val) public pure returns (string memory s) {
        s = "";
        while (val!= 0) {
            val /= 10;
            s = char(val % 10) + s;
        }
    }
    function toString(uint i) public pure returns (string memory s) {
        s = "";
        while (i!= 0) {
            i /= 10;
            s = char(i % 10) + s;
        }
    }
}
