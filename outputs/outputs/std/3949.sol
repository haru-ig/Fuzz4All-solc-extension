pragma solidity ^0.8.0;
contract Convert {
    function intToBin(uint256 x) internal pure returns (string memory) {
        bytes memory s = new bytes(8 * x.toString().length);
        for (uint256 i = 0; i < s.length; i ++) {
            uint digit = x % 2;
            x /= 2;
            s[i] = '0' + digit.toString();
        }
        return string(s);
    }
    function toAddrStr(bytes memory b) internal pure returns (string memory) {
        if (b.length == 0 || b.length > 20) {
            return "0x00";
        }
        bytes memory b20 = new bytes(20);
        for (uint256 i=20; i>=0; i--) {
            b20[i] = b[b.length-1-i];
        }
        return address(uint160(abi.decode(bytes(b20), (uint160))));
    }
}
