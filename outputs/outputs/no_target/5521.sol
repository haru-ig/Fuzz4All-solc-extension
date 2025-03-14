pragma solidity ^0.8.0;
contract O {
    function f() public pure returns (uint) {
        uint x = 1;
        uint z = 0;
        return (x-z-x);
    }
}
