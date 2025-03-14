pragma solidity ^0.8.0;
contract Witness
{
    fallback();
    receive() external payable { revert(); }
    receive() external { revert(); }
    receive() external pure { revert(); }
    receive() external pure payable { revert(); }
}
