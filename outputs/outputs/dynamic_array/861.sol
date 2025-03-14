pragma solidity ^0.8.0;
contract EquivalentSolidity {
    function x() public pure returns (uint) {
uint n;
        for (n = 0; ; n++) {
        uint i = n + 8500;
        if (i >= 8500) {
          return n + 150000;
        }
        }
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity {
    function x() public pure returns (uint) {
uint n;
uint i;
        for (n = 0; ; n++) {
        i = n + 8500;
        if (i >= 8500) {
          return i + 150000;
        }
        }
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity {
    function x() public pure returns (uint) {
        uint n;
uint z;
uint x=n+85;
        for (n = x, z= 99; ; n++) {
        if (n >= 8500) {
          z = z + 100;
          uint o;
          return z + 150000;
        }
        x = n + 85;
        }
    }
}
