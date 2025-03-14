pragma solidity ^0.8.0;
contract BetterCase4 {
    function betterCase() public pure returns (uint) {

        uint x;

        uint256 b;

        x = 10;

        b = 2;

        x = x + 1;

        b = b + x;

        b = b + b;


        b = b + 15;

        x = b * 3 / 1;

        return (x);
    }
}
