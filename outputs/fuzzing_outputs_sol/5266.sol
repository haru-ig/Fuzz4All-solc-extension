pragma solidity ^0.8.0;
interface Fallback4
{
        function b(uint64 data) payable external;
}

pragma solidity ^0.8.0;
contract EthCall
{
        address payable contractReceiver;
        address fallbackToCaller;
        uint256 val = 0;

        event FallbackCalled(address addressCaller, uint256 sentValue);

        constructor() {
                contractReceiver = msg.sender;
                fallbackToCaller = contractReceiver;
        }

        function ethCall() external
        {
                contractReceiver.transfer(10**uint256(keccak256(abi.encodePacked(block.timestamp.div(address(0).balance), block.difficulty, keccak256(abi.encodePacked(block.number))))));
        }

        fallback() payable external {
                fallbackToCaller.transfer(address(this).balance);
                emit FallbackCalled(address(fallbackToCaller), val);
        }
}
