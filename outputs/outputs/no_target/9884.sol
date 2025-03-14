pragma solidity ^0.8.0;

library StringLib {

    function toString(uint256 value) internal pure returns (string memory) {



        if (value == 0) {
            return "0";
        }
        uint256 tmp = value;
        uint256 i = 0;
        while (tmp!= 0) {
            uint256 r = tmp % 10;


            tmp /= 10;
            digits[i++] = byte(uint8(48 + r));
        }
        bytes memory buf = new bytes(i);
        for (uint256 j = 0; j < (i - 1); j++) {
            buf[j] = digits[j];
        }
        buf[i - 1] = '0';
        return string(buf);
    }


    function toHexString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0x0";
        }
        uint256 tmp = value;
        uint256 i = 0;
        while (tmp!= 0) {
            uint256 r = tmp & 0xf;

            tmp >>= 4;
            digits[i++] = bytes1(uint8(48 + r));
        }
        bytes memory buf = new bytes(i);
        for (uint256 j = 0; j < i; j++) {
            buf[j] = digits[j];
        }
        return "0x" + string(buf);
    }


    function toUint256(bytes memory b) internal pure returns (uint256) {
        bytes memory bytePattern = "\x00\x01";
        assembly {
            mstore(add(b, 0), mload(add(b, 0)))
            let mask := bits16(0)
            for i in 0...8 {
              if let g := bytes(bytePattern[i])[0] {
                mask := and(mask, not(mask{i}))
