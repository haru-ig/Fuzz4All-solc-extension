pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public payable {}
}
pragma solidity ^0.8.3;
contract Fallback2 {
    function fallback() public payable {
        msg.sender.transfer(address(this).balance);
    }
}
