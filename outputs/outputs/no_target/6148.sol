pragma solidity ^0.8.0;
contract Mod_128_bug {
    uint result;
    function mod_128(uint a) public returns (uint) {
        uint res = a / 1818181818;
        uint modulo = udiv(a, 1818181818);
        return (modulo * 1818181818) / 1818181818;
    }

    function udiv(uint a, uint b) pure public returns (uint) {
        unchecked {
            require(b > 0);
            return (a / b) + (a % b > 0);
        }
    }
}
contract Mod_130_bug {
    uint result;
    function mod_130(uint a) public returns (uint) {
        uint res = a % 130;
        uint modulo = umod(a, 130);
        return (modulo * 130) / 130;
    }

    function umod(uint a, uint b) pure public returns (uint) {
        unchecked {
            require(b > 0);
            return (a % b) + (a / b > 0);
        }
    }
}
