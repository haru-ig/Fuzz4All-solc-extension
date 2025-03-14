pragma solidity ^0.8.0;
contract Test67b {
    function bar() public {
        uint[] storage flag= new uint[](5);
        flag[0]++;
    }
}
