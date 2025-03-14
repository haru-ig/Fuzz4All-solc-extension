pragma solidity ^0.8.0;
contract Example18 {
}
contract Example19 {
    function example() public payable {
        Example16() payable(msg.sender);
        Example18() receive(address(this).balance);
    }
}
