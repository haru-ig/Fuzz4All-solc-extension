pragma solidity ^0.8.0;
contract C {
    uint256[] b = new uint256[](3);
    uint256 a;
    function c() public {
        delete b[a];
        b[a] = 1;
        a = 1000;
        b[a] = 2;
    }
}
