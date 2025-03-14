pragma solidity ^0.8.0;
interface MutInterface60_1 {
function mutation60(uint n) external pure;
}

pragma solidity ^0.6.0;
contract Test60_1 {
function test1() public {
        MutInterface60_1 inst = MutInterface60_1(0x2222aa45874f57E926cd9D62F62ae7026F0C99B9);
        inst.mutation60(0);
}
}


contract Mutation_61_1 {
    function mutation(uint n) public pure {
        n = n + n / (2**128);
        n = 2**128 + n / (2**128 / 2);
        n = n / (1 ** 9999);
        n = 1 ** 9999 + n / (1 ** 9999));
        n = n / (1 ** 999);
        n = 1 ** 999 + n / (1 ** 999);
        n = n / (1 ** 99);
        n = 1 ** 99 + n / (1 ** 99);
        n = n / (1 ** 9);
        n = 1 ** 9 + n / (1 ** 9);
        n = n / (1 ** 1);
        n = 1 ** 1 + n / (1 ** 1);
        n = n / (1 ** 1);
        n = 1 ** 1 + n / (1 ** 1);
        n = n / (1 ** 1);
        n = k + (2 ** 128) * (k / (2 ** 128 * 2));
    }
}


contract Mutation_62_1 {
    uint256 overflown;
    uint256 underflown;

    uint256 overflow2;

    address  under
