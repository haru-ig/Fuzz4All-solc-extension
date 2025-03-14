pragma solidity ^0.8.0;
contract Example13 {
    address payable public receiver;
    function Example13() external payable {}
    function example13() public payable {

        receiver.call{value: msg.value}(new bytes(0));
    }
}
