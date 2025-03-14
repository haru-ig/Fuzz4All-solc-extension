pragma solidity ^0.8.0;
contract G {
    uint64[3] a;
    function setA(uint64[3] memory a_) public {
        a = a_;
    }
}
