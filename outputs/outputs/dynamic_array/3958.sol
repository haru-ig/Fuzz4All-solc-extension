pragma solidity ^0.8.0;
contract C {
    uint[20] x;
    uint[32] z;
    uint[42] y;
    function init() public {
        x = new uint[](10);
        x.push(1);
        x.push(2);
    }
}
