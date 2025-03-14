pragma solidity ^0.8.0;
contract Injection_04
{
    function test() public {
        bytes memory z0;
        bytes memory z0;
        calltest(z0);
    }
    function test2() public {
        bytes memory z;
        bytes memory z0;
        calltest2(z, z0);
    }
    function calltest(bytes memory y) public {
        uint w = uint(int2unsigned(y));
    }
    function calltest2(bytes memory y, bytes memory w) public {
        uint w1 = uint(int2unsigned(y));
        uint w0 = uint(int2unsigned(w));
    }
}
