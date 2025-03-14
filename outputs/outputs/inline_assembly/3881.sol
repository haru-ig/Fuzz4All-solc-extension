pragma solidity ^0.8.0;
contract SemanticallyEquivalent17 {
    function isEquivalent(bool b1, bool b2) public pure returns (bool b3) {
        const uint128 a = -2**128;
        return (a == b1);
    }

    function test() public {
        const bool b1 = isEquivalent(true, true);
        const bool b2 = isEquivalent(false, false);
        const bool b3 =!isEquivalent(true, true);
        const bool b4 =!isEquivalent(false, false);
    }
}
