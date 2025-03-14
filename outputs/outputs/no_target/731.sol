pragma solidity ^0.8.0;
contract RevertTestSemantics {
    function equals(uint a, uint b)
        public pure
        returns (bool x)
    {
        if (!a < a &&!b < a) {
            revert();
        }
    }
    function div0()
        public pure
        returns (uint)
    {
        if (!(1 / 0) == 0) {
            revert();
        }
        else {
            revert(1);
        }
    }
    function div1()
        public pure
        returns (uint)
    {
        if (!(1 / 1) == 1) {
            revert();
        }
    }
}
