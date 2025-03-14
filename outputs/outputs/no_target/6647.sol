pragma solidity ^0.8.0;
contract MutantSafeMath8 {
    uint x = 1;
    uint z = 0;
    function mutation(uint y) public pure {
        x = 0;
        z = x + y;
        uint x0 = x;
        x = x + 1;
    }
    function _doMutation() public {
        mutation(0);
    }
    function _test() public {
        _doMutation();
        bool eq0 = x == 1 && z == 2;
        assert(eq0);
    }
}


contract NewlyABICodedSafeMath8 is SafeMath8{
    function min(uint x, uint y) internal pure returns (uint z) {
        require(x <= y);
        return x;
    }
}
contract NewlyABICodedSafeMath9 is SafeMath9{
    function min(uint x, uint y) internal pure returns (uint z) {
        require(uint(x) <= y);
        return x;
    }
}
