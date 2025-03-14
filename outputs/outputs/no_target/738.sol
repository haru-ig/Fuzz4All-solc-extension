pragma solidity ^0.8.0;
contract MutateTestSemanticsEquivalent {
    function add1(uint a)
        public pure
        returns (uint)
    {


        (uint result;
        unchecked {
            a--;
            a--;
        }
        result = 1 - a + a;
        return a;
    }
    function add2(uint a)
        public pure
        returns (uint)
    {


        (uint result;
        unchecked {
            a--;
            a--;
            a--;
        }
        a = a >> 7;
        return result + a;
    }
    function add3(uint a)
        public pure
        returns (uint)
    {

        (uint result;
        unchecked {
            a--;
            a--;
            a--;
            a--;
            a--;
        }
        result = a + 1 - a;
        return a;
    }
}
