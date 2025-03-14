pragma solidity ^0.8.0;
contract MutatorWithoutPayable {
    fallback() public payable{}
    receive() public payable{}
}

pragma solidity ^0.8.0;
contract Constant {
    address public constant owner=msg.sender;
    modifier onlyOwner{require(msg.sender==owner);}
}
