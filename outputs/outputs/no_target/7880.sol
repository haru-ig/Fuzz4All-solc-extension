pragma solidity ^0.8.0;
interface IToken {
    function () external payable;
    function balanceOf(address) external view returns (uint256);
}
