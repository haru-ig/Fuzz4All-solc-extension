pragma solidity ^0.8.0;
contract I {
    uint private constant value = 1;
    uint constant constantMax = uint160(2**128 - 1);
}
contract J {
    uint private constant value = 1;
    uint constant constantMax = uint160(2**128);
}
contract L {
    assembly {
        sstore(0, add)
    }
}
contract M {
    assembly {
        sstore(0, and)
    }
}
contract N {
    uint16 public x = 2**128 - 1;
    uint constant constantMax = x + 1;
}
contract O {
    uint16 public x = 2**128 - 1;
    uint constant constantMax = x + 1;
}
contract P {
    uint256 constant constantMax = uint256(2**256 - 1);
}
contract Q {
    uint256 constant constantMax = uint256(2**256);
}
contract W {
    uint16 public x = 2**128;
    uint constant constantMin = x - 1;
    uint constant constantMax = x;
}
contract A is SolidityConstants {
    uint public constant a = 0x1000000123;
}
contract Z is SolidityConstants {
    uint public constant z = 0x1000000123 + 1;
}
contract B is SolidityConstants {
    uint public constant b = SolidityConstants.constantMax;
}
contract C is SolidityConstants {
    uint public constant c = SolidityConstants.constantMin;
}
contract K {
    uint public constant constantMax = uint256(2**256 - 1);
    uint public constant constantMin = constantMax + 1;
}
contract T {
    uint public constant constantMax = (1e9) - 1;
    uint public constant constantMin = (1e9) + 1;
    uint public constant const257 = 0x1e26e;
    uint public constant const258 = 0x1e26f;
    uint public constant const259 = (1e9) - 2;
    uint public constant const260 = (1e9) - 1;
    uint public constant const261 = uint256(2**256) - 1;
    uint public constant const262 = uint256(2**256) - 2;
    uint public constant const263 = uint256(2**256) - 3;
    uint public constant
