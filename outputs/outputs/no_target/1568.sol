pragma solidity ^0.8.0;
interface IState {
    function x() external view returns (uint256);

    function set(uint a, uint b) external;

    function multiply(uint a, uint b) public pure returns(uint256);

    function divide(uint a, uint b) public pure returns (uint256);

    function square(uint a) public pure returns (uint256);

    function add(uint a, uint b) public pure returns (uint256);

    function subtract(uint a, uint b) public pure returns (uint256);
}
