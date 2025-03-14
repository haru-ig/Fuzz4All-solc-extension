pragma solidity ^0.8.0;
contract Convert {
    function toSigned(uint256 arg) internal pure returns (int256) {
        uint256 bits = arg.toString(2);

        return int256(bits.swap(uint256(1)).padLeft(int256(bits.length), "0").substring(int256(bits.length):-1,1));
    }
    function toUnsigned(int256 arg) internal pure returns (uint256) {

        return uint256(uint256(arg).padLeft(bitWidth(arg), "0"));
    }
    function padLeft(int256 x, uint256 n, string memory s) private pure returns (string memory) {
        string memory s1 = int2str(x,-n);
        while (s.length < n) {
            s = string(abi.encodePacked(s,"0"));
        }
        return s1;
    }
}

pragma solidity ^0.8.0 ;
contract Memory {}

pragma solidity 0.8 ;
contract Math {
    function sqrt(int256 x) private pure returns (int256 res) {
        if (x < 0) {
            revert("value too small");
        }
        res = sqrt_by_bit_manipulation(x);
    }
    function isqrt(uint256 x) private pure returns (int256 res) {
        if(uint256(x).compareTo(0) == 0) {
            revert("invalid argument");
        }
        res = sqrt_by_bit_manipulation(x);
        if(res == -1) {
            revert("integer underflow");
        }
    }
}
