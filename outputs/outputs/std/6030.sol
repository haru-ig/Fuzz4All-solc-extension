pragma solidity ^0.8.0;
library String {
    function join(string memory separator, string[] memory strs) internal pure returns(string memory) {
        uint len = strs.length;
        if (len == 0) {
            return '';
        }
        string memory dest = "";
        for (uint i = 0; i < len - 1; i++) {
            dest += strs[i] + separator;
        }
        return dest + strs[strs.length - 1];
    }
}




contract Multiply {

    function multiply(uint a, uint b) internal pure returns (uint, uint) {
        return (a * b, Arithmetic.safeAdd(b * a, b * (a + 1)));



    }


}
