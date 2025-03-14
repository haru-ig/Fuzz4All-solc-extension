pragma solidity ^0.8.0;
contract Mutate4 {
    uint public _1;
    uint[2] public _2;
    uint32[4] public _3;
    uint64[8] public _4;
    uint [_size] = [0,1,23,0xa,0x0];
    constructor(uint128 _x) public {
        _1 = 42;
        _2[0] = _x;
        _2[1] = uint256(-90187309484739);
        _3[0] = uint32(0);
        _3[1] = uint32(0xffffffff0000000000000000);
        _3[2] = uint32(0x123456789abcdef0);
        _3[3] = uint32(uint64(0x123456789abcdef0ffffffffff));
        _4[0] = uint64(uint128(1234567890));
        _4[1] = uint64(int128(78873899112371945));
        _4[2] = uint64(0xfffffffffffffffffffffffe0000000000000000000000013);
        _4[3] = uint64(uint128(9876543210));
        _4[4] = int64(0x00000000000000000a);
        _4[5] = int64(0x000000000000000000aab);
        _4[6] = int64(1422989397);
    }
}

function test1() public {
    Mutate3 _x = new Mutate3();
    Mutate4 _y;
    _x._2[0] = 0x8;
    _y = new Mutate4(uint256(12345));
    assert(address(0)!= address(_y));
    string memory _z = "test";
    _y._2[1] = stringToBytes32(_z);
}
