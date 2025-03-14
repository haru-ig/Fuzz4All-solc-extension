pragma solidity ^0.8.0;
contract Outer {
    function outer() public pure returns (uint) {
        return 100;
    }
}
contract Caller {
    function fallback() public payable returns (uint) {
        require(msg.value > 0);
        (uint x, uint y) = (100,100);
        Outer o;
        uint z;
        (x, y, o, z) = (10, 200, o, x);
        x = 11;
        x = o.outer();
        Outer o_;
        (x, o_,z) = (10, o_, z);
        (uint, uint ozz, Outer, uint) = (321, 444, o, ozz);
        uint zz = 555;
        assert(x > 0);
        (z, o, ozz) = (100, o, zz);
        (uint, uint ozz, uint) = (321, ozz, z);
        (zz,) = (zz*z);
        uint v;
        (v,) = (10, ozz);
        uint val1;
        (val1,) = (10,v);
        (val1, uint val2, uint val3) = (10, v, v);
        return o.outer();
    }
}
