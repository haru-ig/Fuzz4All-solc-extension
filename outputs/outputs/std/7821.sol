pragma solidity ^0.8.0;
contract Mutated {
    function changeBase(uint256 base) public pure {
        if (base == 10) {
            x = 2;
        }
        else {
            x = 3;
        }
    }
}
contract Array {
    uint[] array;
    function addElementAt(uint index, uint element) public return (uint addedElement) {
        array.length = array.length + 1;
        return;
    }
}
contract Array {
    uint [] memory array;
    function addElementAt(uint index, uint element) public return (uint addedElement) {
        array.length = array.length + 1;
        return;
    }
}
contract Convert {


    function toHex(uint256 num) pure internal returns (string memory) {
        uint ssz = 0;
        uint dig = num;

        while (dig > 0) {
            ssz = ssz + ((int) dig) / (int) pow(16, ssz);
            dig = ((int) dig) % (int) pow(16, ssz);
        }

        if (ssz == 0) {
            return "0".repeat(130);
        }
        else {
            bytes memory hex = new bytes(ssz/2 + 1);
            hex.write((uint8) '0'.length - ((uint256) hex - 1) + (((uint256) hex - 65) / (uint256) (ssz / 2 + 1))));
            hex.write((uint8) '0'.length - ((uint256) hex - 7) + ((uint256)(hex - 97) / 256));
            return string(hex);
        }
    }


    function fromHex(string memory hex) pure public returns (uint256 returnNum) {
        bytes memory hexBytes = bytes(hex);
        bytes memory hexBytes2 = hexBytes;
        uint i = 0;
        for (i = 1; i < hexBytes2.length - 8; i++) {
            returnNum = (16 * returnNum) + (hexBytes2[i] >= 65 && hexBytes2[i] <= 70? hexBytes2[i] - 55 : hexBytes2[i] - 48);
        }
        return returnNum;
    }
}
contract Convert {

    function toDecimal(uint256 num) pure public returns (uint256 returnNum) {
        uint divisor = 1;
        uint returnLength = 1;
        while
