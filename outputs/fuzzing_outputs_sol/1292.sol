pragma solidity ^0.8.0;
contract FallbackTest {
        function fallback() external payable {
        }
        receive() external payable {
        }
}
contract Caller {
        function send(address receiver, uint amount) public payable {
               receiver.sendValue(amount);
        }

        function sendEther(uint amount) public payable {
               send(address(0x0), amount);
        }

        receive() external payable {
        }
}
