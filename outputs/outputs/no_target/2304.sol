pragma solidity ^0.8.0;
contract mutation0b33
{
    function a(bytes32 x) internal pure
    {
        if (x>=0)
            revert("assertion should fail");
    }
    function b(address x) public pure
    {
        uint256 y = address(this).balance;
        assert(x>=0 && x<=10**256);
    }
}
