pragma solidity ^0.8.0;
contract Randomness {
        uint8[] private _random;
        uint8 seed;
        constructor(uint8 _seed) { seed = _seed; _updateSeed(); }

        function random(uint8 min, uint8 max) internal returns (uint8) {
        uint8 randomBytes = uint8(uint160(keccak256(abi.encodePacked(seed))));
        seed = (seed >> 8) + randomBytes;
        return ((seed % (max - min + 1)) + min);
        }

        function random(uint8 max) internal returns (uint8) {
        uint8 randomBytes = uint8(uint160(keccak256(abi.encodePacked(seed))));
        seed = (seed >> 8) + uint8(32472317 * randomBytes);
        return (seed % (max + 1));
        }

        function randomByte() internal returns (uint8) {
        seed = 0xa523e20a;
        return uint8(uint160(keccak256(abi.encodePacked(seed)))));
        }
        function _updateSeed() internal {
        seed = randomByte();
        }
        function updateSeed(uint8 i) internal {
        seed = (uint8(32472317 * seed) + uint8(i)) % 254;
        }
}
