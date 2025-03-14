pragma solidity ^0.8.0;
contract MultipleReturn7 {
    event GetResult(uint z,uint y,uint x);
    struct Zx {
        uint96 z;
        uint32 x;
    }
    Zx zxy = {uint96: 3, uint32: 11} ;
    function multipleReturns9() public returns (uint z, uint x, uint xValue) {
        z = zxy.z;
        x = zxy.x;
        xValue = 3;
        GetResult(z,x,xValue);
    }
}
