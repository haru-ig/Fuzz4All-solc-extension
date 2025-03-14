pragma solidity ^0.8.0;
interface IConvert {
    function toIntString(uint256 val) external pure returns (string memory);
    function toUintString(uint256 val) external pure returns (string memory);
    function toBytes32String(uint256 val) external pure returns (string memory);
}

pragma solidity ^0.8.0;
contract SHA3 {
    string internal constant alphabet = "0123456789qwertyuiopasdfghjklzxcvbnm";

    function hex(uint8[] memory input) public pure returns (string memory) {
        assert(input.length == 32);
        string memory s = "";
        for (uint256 i = 0; i < 32; i = i + 2) {
            uint256 digit_index = uint256((i > 11)? i - 26 : i) * 25 + uint256(input[i]);
            string memory c = string(abi.encodePacked(alphabet[digit_index >> 12], alphabet[digit_index & 0x3F], alphabet[(digit_index + 4095) >> 12], alphabet[(digit_index + 4095) & 0x3F])) + " ";
            s = string(abi.encodePacked(s, c));
        }
        return s;
    }

    function sha3(uint8[] memory input) internal pure returns (string memory) {
        return keccak256(abi.encodePacked(input));
    }

    function sha512(uint8[] memory input) internal pure returns (string memory) {
        return hex(abi.encodePacked(sha3(input), uint8(keccak256(abi.encodePacked(input))))));
    }
}
/* Please create an interface that defines four operations: 1. push(uint256 val); 2. pop(uint256 len); 3. set(uint256 index, uint256 val, uint256 len); 4. get(uint256 index, uint256 len).
1. push: the value is added to the array.
2. pop: returns an element from the array.
3
