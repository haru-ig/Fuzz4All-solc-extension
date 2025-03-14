pragma solidity ^0.8.0;
import "./Caller.sol";
contract Fallback {
    receive() public pure {
        (bool success, ) = payable(address(new Caller()))(0);
        require(success);
    }
}
