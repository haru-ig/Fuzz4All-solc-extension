pragma solidity ^0.8.0;
contract MutatingContract
{
    function mutatedFunction()
        public
        pure
        returns (bool)
    {
        return false;
    }
}
contract AnotherMutation
{
    function test() public {
        (string memory test, ) = MutatingContract.mutate();
        Test testInstance = new Test();
        (bool testValue, ) = testInstance.test();
    }
}
