pragma solidity ^0.8.0;
library Lib {
    function addAndSub(uint a, uint b) public pure returns (uint) {
        uint c = a + b - 2;
        c = a + b - c;
        return c;
    }
}
contract C {
    function getResult(uint x, uint y) public view returns(uint) {

        uint x = x + Lib.addAndSub(y,x);
        x = x + Lib.addAndSub(y,x);
        x = x + Lib.addAndSub(y,x);
        x = x + Lib.addAndSub(y,x);
        x = x + Lib.addAndSub(y,x);
        x = x + Lib.addAndSub(y,x);

        return x;
    }
}
