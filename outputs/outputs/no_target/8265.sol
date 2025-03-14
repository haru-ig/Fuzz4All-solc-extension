pragma solidity ^0.8.0;
contract Mutated {
    function __zero(address _a) pure returns (uint) {
        return 0;
    }
    function __max(uint _a, uint _b) pure returns (uint) {
        return uint(uint(_a) + uint(_b));
    }
    pragma solidity ^ 0.8.0;
}

pragma solidity ^ 0.8.0;
contract MutatedUnchecked {
void __zero(address _a) pure internal {
    unchecked {
        uint  i=0;
        i = uint(_a);
        return;
    }
}
void __max(uint _a, uint _b) internal pure returns (uint) {
    unchecked {
        uint  i=0;
        i = uint(_a);
        return  i + i + uint(_b);
    }
}
    pragma solidity ^ 0.8.0;
}
