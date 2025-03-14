pragma solidity ^0.8.0;
contract MutatedSemanticCheckSemanticsImperfectArithmeticV4 {
    uint private variable = 100;

    uint public previousVariable;

    function checkAdd1(uint a)
        public pure
        returns(uint)
    {
        previousVariable = add3(a);
        uint b = add3(previousVariable);
        return addedAddition(b);
    }

    function add2(uint a)
        public pure
        returns(uint)
    {
        previousVariable = a + 100;
        uint b = a + previousVariable;
        return addedAddition(b);
    }

    function addedAddition(uint a)
        public pure
        returns(uint)
    {
        return a + 3;
    }
}
uint testNum;
uint testNum1;
function testF()
        public
        pure
        returns(uint)
    {
        return add3(testNum);
    }
