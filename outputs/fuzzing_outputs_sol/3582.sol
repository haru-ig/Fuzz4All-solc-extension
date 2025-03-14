pragma solidity ^0.8.0;
contract MutateSemantic5WithCaller {
    function test() public {
        (uint256 x, ) = MutateSemantic5WithCaller2.fun2();
        {
            uint256 y = (x * 5) / 10;
            (uint256 z, ) = MutateSemantic5WithCaller2.fun2();
        }
        (uint256 z, ) = MutateSemantic5WithCaller2.fun2();
    }
}
