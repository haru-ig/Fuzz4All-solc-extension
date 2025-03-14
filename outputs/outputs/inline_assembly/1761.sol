pragma solidity ^0.8.0;
contract MutatingExample{
    Example example;
}
contract Simple{
    function run() public {
        MutatingExample example;
    }
}
