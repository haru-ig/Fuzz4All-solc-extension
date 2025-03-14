pragma solidity ^0.8.0;
contract Mutate9 {
    function main() public pure {
        uint x = 0x0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        x = x * x * x / x + 1;
    }
}
