pragma solidity ^0.8.0;
contract BetterCase6 {
    struct BetterCase6 {
        uint y;
    }
    function betterCase() public pure returns (BetterCase6 memory) {
        BetterCase6 memory s = BetterCase6(x: 10*3/1);
        return (s);
    }

    struct BetterCase7 {
        uint x;
    }
    function f(BetterCase7 memory b, BetterCase7 memory c) public pure {
        b.x + 1;
        c.x + 2;
    }
}

pragma solidity ^0.8.0;
contract BetterCase5 {
    uint256 constant primes[] = [2, 3, 5, 7, 11, 13, 17];
    function getNextPrime(uint256 i) public pure returns (uint256) {
        for (uint256 j = i + 1; primes[i] * primes[i] <= j * j;) {
            i++;
        }
        return primes[i] + 2;
    }
}

pragma solidity ^0.8.0;
contract BetterCase4 {
    uint256 constant doublePrimes[] = [2, 5, 7, 13, 19];
    function getNextPrime(uint256 i) public pure returns (uint256) {
        for (uint256 j = i + 1; primes[i] * primes[i] <= doublePrimes[j] * doublePrimes[j] && (j * 2) + i < 32;) {
            i++;
        }
        return doublePrimes[i];
    }
}

pragma solidity ^0.8.0;
contract BetterCase3 {
    function f(uint64 x, uint8 s) public pure returns (uint8) {
        switch(s) {
            case 0: return 0;
            case 1: return 1;
            case 2: return 0;
            case 3: return 1;
            case 4: return 0;
            default: return 2;
        }
    }
}

pragma solidity ^0.8.0;
interface BetterCase2Array {
    function push(uint[] memory) external;
}
contract BetterCase2 {
    bytes32 constant myBytes32 = "0x23450102030405060708090a0b
