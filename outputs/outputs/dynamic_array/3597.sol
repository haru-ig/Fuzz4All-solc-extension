pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[] memory x;
        x.length = 3;
        x[0] = 42;
    }
}
