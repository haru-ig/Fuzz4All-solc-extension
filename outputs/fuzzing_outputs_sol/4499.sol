pragma solidity ^0.8.0;
contract Receiver {
    function transfer(uint x) public {}
}
contract SimpleCall {
    function payable fallback() public {
        Receiver contractReceiver = receive();
    }
    function receive() public payable {
        msg.sender.transfer(msg.value);
        ContractResult result;
        assembly {
            result := switch x
              case 1 { result := 3 }
              default { revert(0, "no data") }
        }
        return contractReceiver(address(x), result);
    }
}
