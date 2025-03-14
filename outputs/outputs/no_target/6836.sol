pragma solidity ^0.8.0;
contract TestMutated503 {
    function div(uint d, uint d1, uint d2) public pure returns (uint d3) {
        d = d - d1;
        return div(d, d2);
    }
}

pragma solidity ^0.8.0;
contract TestMutated614 {
    bool operator!=(address, address) public pure;
}

contract TestMutated538 {

    function mul1(uint x, uint y) public pure returns (uint z0) {
        if (z1 < 0) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        uint z3;
        uint z4;
        if (z2 < 0) {
            z4 = mul(z2, x);
        } else {
            z4 = mul(z2, y);
        }
        if (z3 < 0) {
            z3 = z3 + z4;
        } else {
            z3 = 0 + z4;
        }
        z0 = 0;
        return z3;
    }

    function mul(uint x, uint y) internal pure {
        z0 += z1;
        z1 += z2;
    }
}
