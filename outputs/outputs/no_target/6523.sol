pragma solidity ^0.8.0;
contract myContractF {
    function f(uint x, bool a, bool b, bool c, bool d, bool e, bool f, bool g, bool h, bool i, bool j, bool k) public pure returns(uint,uint,uint,uint,uint,uint,uint,uint){
        return (uint(a), uint(b), uint(c), uint(d), uint(e), uint(f), uint(g), uint(h), uint(i), uint(j), uint(k));
    }
}
