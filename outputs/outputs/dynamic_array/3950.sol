pragma solidity ^0.8.0;
contract C {
    uint32[] x;
    uint32[] z;
    uint[3] y;
    function init() public {
        x = new uint32[](5);
        x.push(1);
        x.push(2);
        z = new uint32[](20);
        z.push(1);
        z.push(2);
        y = new uint32[](3);
        y.push(1);
        y.push(2);
    }
}
