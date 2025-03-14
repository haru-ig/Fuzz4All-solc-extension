pragma solidity ^0.8.0;
contract test112 {
    function test() public returns (bool) {
        TestLib.Assert.assertEqual(1, 1);
        return false;
    }
}
