pragma solidity ^0.8.0;
contract Test71 {
    function f() view public returns (uint[])  {
        uint[] memory a = new uint[](3);
        a[3] = 1;
        return a;
    }
}
