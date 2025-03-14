pragma solidity ^0.8.0;
contract modulator4 {
    uint256 public s;
    uint256 constant public M = 1711655789;
    uint256 constant public N = 1000;
    uint256 constant public m = 165353279;
    uint256 constant public n = 1000;
    uint256 constant public d = 9;
}



contract modulator5 {
    modulator4 mod4;
    uint256 f(uint256 x) public returns(uint256) {
        return  mod4.n-f(mod4.n-mod4.a);
    }
    uint256 func(uint256 n) public returns(uint256) {
        return f(n-n);
    }
}
