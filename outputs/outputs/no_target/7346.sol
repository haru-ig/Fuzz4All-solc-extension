pragma solidity ^0.8.0;
contract BugsVersionedAbiCoder{
    function myAssert(bool x) internal pure {
        require(x == true, "Assertion failure");
    }
}
