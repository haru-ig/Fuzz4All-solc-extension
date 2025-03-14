pragma solidity ^0.8.0;
contract EVM5 {
    uint x;
    uint y;
    function init() public {
        x = mul(x,y).add(x);
    }
    function add(uint x,uint y) public {
        uint ret = x.add(y);
        ret = x.add(mul(x,y));
        x.add(x);
    }
    function write() public pure {}
}
