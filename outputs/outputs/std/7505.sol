pragma solidity ^0.8.0;
contract Mutate {
    uint private a = 254;
    function mutate() public pure returns (uint256) {
        uint b = a;
        b /= 2;
        b *= 3;
        a += 3;
        return b;
    }
}
