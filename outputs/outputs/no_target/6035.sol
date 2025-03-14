pragma solidity ^0.8.0;
import "./Lib.sol";
contract Ownable {
    address public owner = msg.sender;
}
