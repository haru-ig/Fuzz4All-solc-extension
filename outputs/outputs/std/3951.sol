pragma solidity ^0.8.0;
contract Random {
    bytes32 private salt;
    uint256 private seed;
    constructor() public {
        uint t = now;
        salt = keccak256(abi.encodePacked(uint32(uint256(t))), uint32(t), uint32(uint256(mfd(t)))) + (
            hex"0000000000000000000000000000000000000000000000000000000000000"
        );
        seed = uint(keccak256(abi.encodePacked(salt, salt))) % (2**uint(uint256(_bits))));
        seed = seed + (uint(keccak256(abi.encodePacked(seed, seed))) & (2**uint(uint256(_bits))))) >> uint(uint256(_bits) + 1);
    }
    function mfd (uint _t) public pure returns (uint256) {
        return 1e11 + 1e7 / _t + (1e7 / (_t * _t));
    }
    function random() public view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(seed))) % (2**uint(uint256(_bits))));
    }
    function randomBytes(uint _bytes) public view returns (bytes memory) {
        bytes memory buf = new bytes(_bytes);
        for(uint i = 0; i < _bytes; i++){
            buf[i] = byte( uint256(keccak256(abi.encodePacked(seed))) % 256);
        }
        return buf;
    }
}
