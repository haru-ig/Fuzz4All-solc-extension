pragma solidity ^0.8.0;
contract Ga1 {
    function g() public {
        uint56[] memory x;
        x.length = 4;
        x[1] = x[0];
    }
}
