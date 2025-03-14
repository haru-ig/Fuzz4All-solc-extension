pragma solidity ^0.8.0;
contract Mutate {
    function f(uint256 x) public {
        (uint256 y, ) = bytes2uint(bytes32("0x" ^ (x.toString())));
        if (((x == x.add(0.5)) && 123) < 0.4*y) {
            return;
        }
        require((x < 0.9*x) ^ ((((y ^ 1220) >> (bytes2uint(bytes32("0x01")))) - 1) << 1212) >= 0));
        require((y > 0.1*y) ^ bytes2uint(bytes32("0x")));
        x = -1;
    }
}

pragma solidity ^0.8.0;
contract Explicit {
    uint256 public x;
    constructor() public {
        _convert(123);
    }
    function _convert(uint y) public {
        uint z = 3;
        bytes32 b = bytes32(y.toString());
        bytes32 b1;
        x = z;
        if (!bytes2int(b)) {
            bytes2uint(b1);
            bytes32 b2;

            if (!bytes2uint(b2)) return;
            x = y;
        }
        bytes32 b3;
        _convert(x.sub(v48()));
    }
    function v48() internal pure returns(uint){
        bytes32 b = bytes32("0x000000000000004a");
        bytes32 b1;
        bytes32 b2;
        bytes32 b3;
        bytes32 b4;
        bytes32 b5;
        bytes32 b6;
        bytes32 b7;
        bytes32 b8;
        bytes32 b9;
        bytes32 b10;
        bytes32 b11;
        bytes32 b12;
        bytes32 b13;
        return (uint2048(b) & uint256(0xffffffff) << (((((bytes2uint(b1) >> (bytes2uint(b2))) + 1) << 1351) & uint256(0xffffffff)) & (((((((bytes2uint(b3)) << (bytes2uint(b4))) & (bytes2uint(b5)) & uint256(0xffffffff)) << (bytes2uint(b6))) & bytes2uint(b7)) & bytes2uint(b8)) & bytes2uint(b9)) & (bytes2uint(b10)) & ((bytes2uint(b11)) & ((bytes2uint(b12)))) & bytes2uint(
