pragma solidity ^0.8.0;
contract AnotherTest {
    function test() public pure {
        string memory s = "param";
        calldata barr = abi.encode(stringToBytes(s));
    }



    function stringToBytes(string memory rawstr) internal pure returns(bytes memory res) {

        require(rawstr.length % 32 == 0);
        uint i = 0;
        bytes memory tmpstr = new bytes(32);
        while (i < rawstr.length) {
            tmpstr[i >> 2] |= charToByte(rawstr[i++]);
            tmpstr[(i + 511) >> 2] |= charToByte(rawstr[i++]);
            tmpstr[(i + 1023) >> 2] |= charToByte(rawstr[i++]);
            tmpstr[(i + 1535) >> 2] |= charToByte(rawstr[i++]);
            tmpstr[(i + 2047) >> 2] |= charToByte(rawstr[i++]);
        }
        return tmpstr;
    }

    function charToByte(uint i) internal pure returns(uint8 r) {
        if (i < 10) {
            r = uint8(i + 0x30);
        } else {
            r = uint8(i + 0x57);
        }
    }
}
