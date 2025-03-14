pragma solidity ^0.8.0;
contract Caller {

    function callEthers() public payable {
        uint256 data = msg.value;
        store(data);

        fallback();
        receiveAndStore(data);
    }
}
