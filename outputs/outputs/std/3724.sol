pragma solidity ^0.8.0;
contract MutatedArray {
    uint256[100] public values;
    uint256 public length;
    void push(uint256 entry) public {
        uint256[100] memory tmp = values;
        values = entry >= length? tmp : tmp.toUint256s(0, length, entry);
        length++;
    }
}

pragma solidity ^0.8.0;
contract MutatedRandom {
    uint8[127] public random;
    uint8 constant BASE = 103;
    uint256 constant PRIME = 0x11A41111111111111111111111111200000000000000000000000000000000;
    uint256 constant MOD = 0x1f800000000000000000000000000000000000000000000000000000000000000;
    uint256 constant MAX_RND_BITS = 255;
    constructor() {
        random.toUint256s(0, random.length, BASE);
    }
    function next() public pure returns (uint8) {
        uint8 result = uint8(math.sha3(uint256(random.toUint16s(0, random.length, 1))));
        return result;
    }
    function next256() public pure returns (uint256) {
        (uint256[] memory array) = (uint256[4]())(random, random, random, base());
        if (array[0] == 0) {
            return array[3];
        }
        uint8[uint8] memory newRND = uint8(BASE);
        newRND.toUint16s(0, newRND.length, array[1]);
        newRND.toUint16s(0, newRND.length, array[2]);
        newRND.toUint16s(0, newRND.length,
