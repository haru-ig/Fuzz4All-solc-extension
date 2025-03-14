pragma solidity ^0.8.0;
contract RevertTest
{
    constructor ()
    {
        require(msg.value > 1 ether);
    }
    fallback() external payable{}
    receive() external pure{ revert(0x796A3251C354e9668236e063c34C35AE75034F0B); }
    function revert(uint256 a) public pure returns (uint256) {  return a; }
}
