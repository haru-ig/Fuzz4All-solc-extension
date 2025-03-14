pragma solidity ^0.8.0;
contract Solidity {
    uint public constant NUM_GAS_TESTS   = 10000;
    uint public constant MIN_BLOCK        = now + 60;
    uint public constant MAX_BLOCK        = now + 120;
    uint public constant GAS_PRICE        = 200 ether;
    function gasTest() public returns (uint) {
        if ((block.timestamp >= (MIN_BLOCK + 1000000 * uint(NUM_GAS_TESTS))) &&
            (block.timestamp < (MAX_BLOCK + 1000000 * uint(NUM_GAS_TESTS)))) {
            uint gasLimit = gasleft();
            return uint(gasLimit, target);
        };

        return ~0;
    }
}
