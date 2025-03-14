pragma solidity ^0.8.0;
contract Convert {
    function toInt(string memory _string) internal pure returns (uint256) {
        uint8[] memory temp = new uint8[](_string.length());
        for (uint256 i = 0; i < _string.length(); i++) {
            temp[i] = uint8(uint8(_string[i]));
        }
        uint256 result = 0;
        for (uint256 i = temp.length - 1; i >= 0; i--) {
            uint256 p = (255^(uint256(i))) * 256;
            result +=  uint256(temp[i])*p;
        }
        return result;
    }
    function toUint(string memory _string) internal pure returns (uint256) {
        bool sign = true;
        uint8[] memory temp = new uint8[](_string.length());
        for (uint256 i = 0; i < _string.length(); i++) {
            temp[i] = uint8(uint8(_string[i]));
        }
        uint256 result = 0;
        for (uint256 i = 0; i < temp.length; ++i) {
            uint256 p;
            if (temp[i] <= 127) {
                p = uint256((127^(uint256(i))));
            } else {
                p = (255^uint256(128+(temp[i]))*256);
            }
            result += uint256(temp[i])*p*(sign? -1:1);
            sign? sign = false : sign = true;
        }
        return result;
    }
}
