pragma solidity ^0.8.0;
contract ExampleUint14 {
    uint32[2] array_uint;
    constructor() {
        array_uint[0]++;
    }
    function getMax2uint32() public pure returns (uint256, uint256) {
        return uintSafe128[(uint256(array_uint[1]), uintSafe128[uintSafe128[uint256(array_uint[0]) * 2]])];
    }
    function getSum2uint32(uint256 x, uint256 y) public pure returns (uint256) {
        return uintSafe128[(uint256(array_uint[0]), uintSafe128[uintSafe128[uint256(array_uint[1]) * 2] + (x + y)])][0];
    }
}

pragma solidity ^0.8.0;
contract TestAddressStorageBytes {
    bytes32 x, y, z, address zp;
    uint u, w;
    constructor (bytes32 x_, uint256 u_, uint w_) {
        x = x_;
        u = u_;
        w = w_;
        y = keccak256(abi.encodePacked(x_, uint32(u), u - intSafe32[uint32(u)]), x, x);
    }
    function set112(bytes32 x_) public {
        x = x_;
    }
    function setAndReturnUint32(uint x_) public pure returns (uint) {
        w = x_;
        u = (x_ >> 32) + (uint(uint32(x_)) >> 31);
        return u;
    }
    function setAndReturnInt32(uint x_) public pure returns (int) {
        uint32 x32 = uint32(x_);
        int32 x32i = int32(x32);
        uint64 x64 = uint64(x32);
        w =
