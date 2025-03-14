pragma solidity ^0.8.0;
contract Test80 {
    function test80()public{
        test80_sol(false);
    }
    function test80_sol(uint x)public{
        x = 45;
        Test81(x).test81(false);
    }
    function test81(bool x)public{
    }
}
