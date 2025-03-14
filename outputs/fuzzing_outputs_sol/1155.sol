pragma solidity ^0.8.0;
contract SimpleMutation3 {
    function simpleMutation() public {
        msg.sender.sendValue(0.002 ether);
    }
    fallback() external payable { }
    function() external payable {}
}
