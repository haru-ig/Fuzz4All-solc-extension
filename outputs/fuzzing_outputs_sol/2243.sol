pragma solidity ^0.8.0;
contract AccessControl{
    address public owner;
    modifier onlyOwner()
    {
        require(msg.sender == owner);
        _;
    }
}
contract AccessControlFallBack is AccessControl {

    function fallback() public payable {

    }
}
