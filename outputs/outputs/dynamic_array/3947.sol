pragma solidity ^0.8.0;
contract C {
    uint [] x;
    uint [] y;
    uint z;
    function init() public {
        z = 42;
        x = new uint[](10);
    }
}
