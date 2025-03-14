pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract FixedLength {
        struct FixedLen {
            bytes memory myBytes;
        }
        function main() public pure {
        bytes memory myBytes = new bytes(2);
    uint256 myLength = myBytes.length + 2;
    uint256 result = myLength + 5 / 2;
    result = 18 / uint1(18);
    }
}
