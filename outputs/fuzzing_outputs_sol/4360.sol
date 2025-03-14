pragma solidity ^0.8.0;
contract Caller {
    function returner() public pure returns (address){
        return msg.sender;
    }
}
