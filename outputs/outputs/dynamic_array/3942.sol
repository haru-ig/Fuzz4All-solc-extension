pragma solidity ^0.8.0;
contract C {
    uint [] x;
    uint[3] y;
    function init() public {
        x = new uint[](10);
    }
}
