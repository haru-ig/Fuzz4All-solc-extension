pragma solidity ^0.8.0;
contract Mutate0015b {
    address public owner;
    function Mutate0015b(address ownerArg) public {
        owner = ownerArg;
    }
    modifier onlyOwner {
        require(owner == msg.sender, "must own message");
        _;
    }
    function foo() public onlyOwner {

    }
}
