pragma solidity ^0.8.0;
address EtherReceiver {
    function () external payable {}
    function fallback(address payable to, uint256 amount) external payable {}
    receive() external payable {}
}
contract EtherReceiverProxy {
    bytes32 internal constant PROXY_CREATE_TX_HASH
    = keccak256(abi.encodeWithSignature("contract EtherReceiverProxy internal returns (address addr) { return msg.sender; }"));
    address internal contractAddress;

    constructor() { contractAddress = address(new EtherReceiver()); }
    function receive() external returns (uint256 returnAmount) {
      returnAmount = EtherReceiver().receive();
      return;
    }

    function createReceiver(address payable to) external {
        require(keccak256(abi.encode(PROXY_CREATE_TX_HASH, contractAddress)) == PROXY_CREATE_TX_HASH);
        if (to == address(0)) {
            to = contractAddress;
        }
        EtherReceiver().contractAddress = to;
        EtherReceiver().fallback(to);
    }

    function fallback(address payable to, uint256 amount) external payable {
        EtherReceiver().contractAddress.transfer(amount);
    }
}
