pragma solidity ^0.8.0;
contract TestCaller{
constructor()public
{
    uint[10] memory memArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 0];
    bytes memory data = abi.encode(memArray);
}
}
