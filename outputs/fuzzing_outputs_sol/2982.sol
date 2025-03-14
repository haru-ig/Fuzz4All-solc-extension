pragma solidity ^0.8.0;
import "./FallbackReceivable.sol";
contract Caller {
    bool public flag;
    event Received(uint256 amount);
    function transfer(uint256 amount) public payable returns (bool success){
        flag = true;
        emit Received(amount);

        _;

        return true;
    }
}
