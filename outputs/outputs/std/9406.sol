pragma solidity ^0.8.0;
contract Mutate2
{
    address public owner;
    uint256 public _a;
    function() external payable {}
    function set() public {

        if (msg.value == 0) {
            (bool success, ) = owner.call{value: msg.value}("");
            require(success);
        } else {
            (bool success, ) = owner.call{value: 0}("");
            require(success, "Should be able to send Ether");
        }
    }
}
