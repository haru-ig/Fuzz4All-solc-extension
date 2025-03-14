pragma solidity ^0.8.0;
contract S9Mutated10 {
    uint8 a = 100;
    constructor () {
    }
    function change1() public {
        a++;
    }
}

pragma solidity ^0.8.0;
contract S10Mutated10 {
    uint8 a;
    constructor () {
        a = 0;
    }
    function change() public {
        a += 1;
    }
}

library Bitwise {
    function isPowerOfTwo(uint8 x) internal pure returns (bool) {
        return (x & (x - 1)) == 0;
    }
}
