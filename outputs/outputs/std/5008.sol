pragma solidity ^0.8.0;
contract Memory {
    function getArrayValue(address data, uint256 index) public view returns (uint256);
    function setArrayValue(address data, uint256 index, uint256 value) public;
}
contract Convert {
    function stringU256(string memory _s) internal pure returns (uint256) {
        uint256 value = 0;
        for(uint i = 0; i < 4; i++) {
            bytes32 b32;
            bytes memory bs32 = bytes(_s);
            uint j;
            for(j = 0; j < bs32.length; j++) {
                value |= (bs32[j] == 45)? 10 ** ((31 - (uint)j)) : (bs32[j] - 48) * (2 ** (8 * i));
            }
        }
        return value;
    }
    function intU256(int256 _i) internal pure returns (uint256) {
        return uint256(_i);
    }
}
contract Float {
    uint constant p = 0;
    uint constant p2 = 0;
    uint constant a = 0;
    uint constant b = 0;
    uint constant c = 0;
    uint constant d = 0;
    uint constant e = 0;
    uint constant a2 = 0;
    uint constant b2 = 0;
    uint constant c2 = 0;
    uint constant x = 0;
    uint constant signX = 0;
    uint constant signX2 = 0;
    uint constant z = 0;
    uint constant z2 = 0;
    uint constant xx = 0;
    uint constant y = 0;
    uint constant y2 = 0;
    uint constant xz = 0;
    uint constant xxz2 = 0;
    uint constant yxz = 0;
    uint constant signY = 0;
    uint constant signY2 = 0;
    uint constant signYxz = 0;
    uint constant signYxz2 = 0;
    uint constant signXz = 0;
    uint constant signXz2 = 0;
    uint constant signXzY = 0;
    uint constant signXzY2 = 0;
    uint constant signXy = 0;
    uint constant signXy2 = 0;
    uint constant signXyz = 0;
    uint constant signXyz2 = 0;
    uint constant signZ = 0;
    uint constant signZ2 = 0;
    uint constant signZx = 0;
    uint constant signZx2 = 0;
    uint constant signZxZ = 0;
    uint constant signZXZ2 = 0;
    uint constant signYZ = 0;
    uint constant signYZ2 = 0;
    uint constant sign
