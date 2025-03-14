pragma solidity ^0.8.0;
import "./Fallback3.sol";

contract Caller
{
        function a(uint64 data) public returns(address payable);

        function fallback(uint8 data, address payable targetAddress) public nonvirtual returns(bool);
}
