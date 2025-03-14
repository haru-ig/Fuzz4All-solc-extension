pragma solidity ^0.8.0;
import "./Interface.sol";
contract Simple {
    function sum(Interface x) external view returns (uint);
    function product(Interface x) external view returns (uint);
}
