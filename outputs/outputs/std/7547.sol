pragma solidity ^0.8.0;
contract BetterCase5 {
    function betterCase() public pure returns (uint) {
        uint x = 10;
        uint256 b = 2;
        b = b;
        b = b + x / 24;
        x = b * 3 / 1;
        return (x);



    }
}
