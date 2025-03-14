pragma solidity ^0.8.0;
contract CallerMutating {
    address receiver;
    address payable fallbackAddress;

    function CallerMutating(address receiverIn) {
        receiver = receiverIn;
        receive();
    }

    receive() public payable {

        fallbackAddress = msg.sender;
    }

    fallback()
        public
        virtual
        payable
    {
        fallbackAddress.transfer(address(this).balance);
    }
}
