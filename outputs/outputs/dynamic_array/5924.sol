pragma solidity ^0.8.0;
contract Test56349 {
    uint16[2][] public x;
    uint16 a;
    bool test;
    function f() public {
        x = [[-1, -1, -1], x];
        a = x[1][0];
        test = false;
    }
    function get() public view returns (uint16[2][] memory) {
        uint16[2][] memory a_get;
        a_get[1][0] = x[0];
        return a_get;
    }
    function seta() public {
        test = true;
    }
}
