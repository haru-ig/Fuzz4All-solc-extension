pragma solidity ^0.8.0;
contract Caller1 {
    function transfer(uint256 amount) public payable {
    }
}

pragma solidity ^0.8.6;
contract Caller2 {
    function transfer(uint256 amount) public receive {
    }
}
