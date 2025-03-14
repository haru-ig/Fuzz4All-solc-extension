pragma solidity ^0.8.0;
contract MyContract {
    function m1() public view returns (uint64) {
        return MyMath.div(10, 3);
    }
    function m2() public view returns(uint64) {
        uint64 a = 10;
        uint64 b = 3;
        return MyMath.div(a, b);
    }
}
