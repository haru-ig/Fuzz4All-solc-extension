pragma solidity ^0.8.0;
contract Example2 {
    function f0() public pure returns (uint) {
        return 0;
    }
    function f1() public pure returns (uint) {
        uint returnData = 0;
        uint y = 3;
        uint x = 2;
        uint a = add(y, x);
        uint z = add(a, x);
        returnData = z;
        return returnData;
    }
}
