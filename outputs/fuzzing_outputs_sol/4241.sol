pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SentryMutateCallerFallback1 {
    uint128 test;
    function Mutator() public {
        (uint128 x, uint error) = x0001;
        test = x;
        assert(x == 300, "Bad test");
    }
    uint128 private function x0001() private pure returns (uint128, int128) {
        return (300,100);
    }
    function _mutateCaller() internal pure {
        uint128 test;
        assembly {
            test := 300
            x0001(test,100)
        }
    }
}
