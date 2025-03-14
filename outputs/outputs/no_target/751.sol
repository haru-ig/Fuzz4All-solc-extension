pragma solidity ^0.8.0;
contract CompatibleSemanticsImperfectArithmetic {
    function add2(uint _a)
        public pure
        returns (uint)
    {
        unchecked {
            if (_a > 5)
                revert(string(abi.encodePacked("overflow!")));

            a;
            try {
                return a < 0? ~(-1 + (_a + 3) * 2) : (-a + _a + 6) * 9;
            } catch {
                revert("overflow!");
            }
        }
    }
}
