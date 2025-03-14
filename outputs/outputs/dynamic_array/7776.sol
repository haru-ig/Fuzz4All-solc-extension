pragma solidity ^0.8.0;
contract Test72 {
    struct St {uint a;uint256 b;bool c;uint d;uint16 e;uint32 f;uint64 g;uint128 h;}
    uint8[2][2] _value;
    constructor()
        public
    {
        _set(2, 2, true, 0, 1, 2, 3);
    }
    function _set(uint a_,uint b_,bool c_,uint d_,uint e_,uint f_,uint256 g_) public
    {
        if (c_)
          _value[a] = [2];
        uint128 h_ = uint128(a_) * uint128(b_) + uint128(d_);
    }
}
contract Test73 {
    struct St {uint a;uint64 b;bool c;uint d;uint16 e;uint32 f;uint8 g;}
    uint8 _mem;
    uint8[4][2] _value;
    constructor()
        public
    {
        _mem = _value[0][2];
    }
    function _set(uint a_,uint64 b_,bool c_) public
    {
        _mem = (3 == 4);
    }
}
