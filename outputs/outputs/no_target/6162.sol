pragma solidity ^0.8.0;
contract Mod_13_bug {
    function f(uint x) public pure returns (uint) {
        if (isSafe(uint(x)) && (uint(x) % 5) == 3) {
            x += 5;
            return (x % 5) + 3;
        }
        return 53;
    }

    function isSafe(uint x) pure public returns (bool) {
        return (x < 8) && (x > -4);
    }
}



pragma solidity ^0.8.0;

contract bug {
    function f(uint i) public view returns (uint) {
        i = 10;
        return 1;
    }
}
