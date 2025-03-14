pragma solidity ^0.8.0;
contract complex {
    uint constant val = 1;
    uint payable[2];
    function complex(uint x) public payable {
        uint constant y = uint(x * val);
        payable = new uint[](2);
        payable[0] = x;
        payable[1] = y;
    }
    function doSomethingElse(uint x) public payable returns (uint z) {
        uint p1 = uint(x % 2);
        uint p2 = uint(p1 - p1);
        uint p3 = uint(x * x % 2);
        z = p1 * val + p2 + p3;
        return ;
    }
    function log2 () {
        log(uint(2**y));
    }
}
