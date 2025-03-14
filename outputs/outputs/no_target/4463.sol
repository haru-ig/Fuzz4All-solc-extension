pragma solidity ^0.8.0;
contract L {
    address public owner;
    uint8[10] private fixedArray;

    uint256 function myFunction() public view restricted {
        uint r = 42;
        ++r;
        uint r2;
        r2 = 42 + 42;
        r2 = r2 * 2;
        --r2;
        r2 = r2 / 2;
        --r2;
        r2 = 10000 + uint256(uint160(-2 ** 256));
        r2 = r2 / 2;
        r2 = r2 * 10000;
        return r2;
    }
}
