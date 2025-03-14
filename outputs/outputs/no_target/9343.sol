pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract semanticallyEquiv
{
    function f1(uint a, uint b) internal pure {
        assembly {
            a := a
            b := b
        }
    }

    function f(uint a) public pure returns (uint) {
        f1(a, a);
        uint x = 0;
        if (a!= 0) {
            x = a;
        }
        return x;
    }
}
