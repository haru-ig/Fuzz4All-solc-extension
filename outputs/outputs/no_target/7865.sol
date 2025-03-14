pragma solidity ^0.8.0;
contract Mutator {
    uint40 x;
    function set(uint40 _x) public {
        require((_x).lt((x).sub((x).shl(1))));
        if (_x == 1) {
            x = (uint40(uint256(x)).add((uint256(x).sub((uint256(x).shl(1))).mod((2**255))))));
            if ((_x * 2) % ((2**255) + 1)) == (_x - 1)) {
                x %= 10 ** 100;
            }
        } else {
            x = ((x * 2) + (uint256(x).sub((x + 1) % ((2**255) + 1)))) / (2**255);
        }
    }
}
