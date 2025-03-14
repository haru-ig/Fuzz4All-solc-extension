pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalentModifications01 {

    function plus(uint a, uint b)
        public pure
        returns (uint)
    {
        uint result ;

        result = a + b;

        return result;
    }

    function plusAndReturns(uint a, uint b)
        pure public
        returns (uint)
    {
        return a + b;
    }

    function plusAndReturnsAndChecksOverflow(uint a, uint b)
        pure public
        returns (uint)
    {
        uint wrapped_result = uint(a + b);
        return(a + b);
    }

    function plusAndReturnsAndChecksUnderflow(uint a, uint b)
        pure public
        returns (uint)
    {
        uint wrapped_result = uint(a + b);
        return(a + b);
    }

    function plusAndReturnsAndChecksOverflow2(uint a, uint b)
        pure public
        returns (uint)
    {
        uint wrapped_result = uint(wraps(a + b));
        return(a + b);
    }

    function plusAndReturnsAndChecksUnderflow2(uint a, uint b)
        pure public
        returns (uint)
    {
        uint wrapped_result = uint(wraps(a + b));
        return(a + b);
    }

    function plusAndReturnsAndChecks
