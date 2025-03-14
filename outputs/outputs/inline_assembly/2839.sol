pragma solidity ^0.8.0;
contract I {
    bytes32 public f;
    bytes1[60] public g;
    bytes public h;
    bytes public i;
    bytes32 public f_;
    bytes1[60] public g_;
    bytes public h_;
    bytes public i_;
    function a() public pure {
        uint j = uint256(128) - (uint(uint32(uint128(uint[10]())) >> 4)) + 127;
        {
            i_ = j;
        }
        if(i<=127) {
            g_ = [0x7fffffc1,0xfffffffffffffe7f];
            g[j] = 0xff000001;
        }
        else j;
        g = g_;
        f_ = keccak256(abi.encodePacked(j,i));
        {
            bytes memory b = new bytes(3);
            b = b;
        }
        {
            bytes memory b = new bytes(3);
            b[j] = 0xffda;
            b = b;
        }
        g_[j]=0x8000001e;
    }
    function c() public pure {
        f = keccak256(abi.encodePacked(b"42"));
        {
            uint j = 32;
            uint i = uint256(128) - (uint(uint32(uint128(uint[10]())) >> 4)) + 127;
            bytes memory b = new bytes(3);
            b[j] = 0xffda;
            b = b;
        }
        g[j]=0x8000001e;
        f = keccak256(abi.encodePacked(b"32"));
        if(!a()) {
            f = keccak256(abi.encodePacked(b"999999999"));
        }
    }
}
