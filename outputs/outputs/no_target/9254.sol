pragma solidity ^0.8.0;
contract semanticallyEquiv{
    function() external pure returns (string memory) {}
    function() external returns (uint256) {}
    function() nonreentrant external returns (uint256) {}
    function() payable external returns (uint256);
}
