pragma solidity ^0.8.0;
contract Modifications3_SEM39_SEM50 {
    int constant LOGICS_MAX_VALUE = 0x40000000;
    bool private isLogicallyTrue;

    constructor()
        public
        modifier(logicallyTrue)
    {
        if (!isLogicallyTrue)
            revert();
    }

    function g(uint256 x) internal pure returns (uint) {
        uint y = x / 2;
        if (y < x / 2) {
            x = 2 * y - x;
        }
        return x;
    }

    function h(uint256 y) private pure returns (uint) {
        uint z = LOGICS_MAX_VALUE;
        while (z > y / 2) {
            z = LOGICS_MAX_VALUE - (z / 2);
        }
        y = x / 2;
        if (y < x / 2) {
            y = x / 2;
            x = 2 * y - x;
        }
        if (z!= LOGICS_MAX_VALUE) {
            y = (y + x) / z * z;
        }
        return y;
    }
}
