pragma solidity ^0.8.0;
contract test31 {
    function test() public pure
    {
        (uint a) = (1);
        a = a + (1);
        a = a + (1);
    }
}
