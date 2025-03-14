pragma solidity ^0.8.0;
contract V0MutatedStorage4 {
    constructor() {}
    receive() external payable {
        mutator();
    }
    function mutator() public {
        msg.data.length;
    }
}<commit_msg>Added V0Fallback function to examples<commit_after>{
