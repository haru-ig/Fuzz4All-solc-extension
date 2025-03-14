pragma solidity ^0.8.0;
contract C {
    function getModifiedResult(uint x, uint y) public view returns(uint) {
        uint x = x + Lib.addAndSub(y, x) + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x + x + x;
        x = x + x + x + x + x;
        return x;
    }
}
