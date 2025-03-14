pragma solidity ^0.8.0;
contract Mutate4 {

    mapping (address => uint256) public balanceOf;

    function main() public {
        mutator4();
    }







    function mutator4() public {
        balanceOf[msg.sender] = balanceOf[msg.sender] + balanceOf[msg.sender];
    }
}
