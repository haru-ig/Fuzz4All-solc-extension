pragma solidity ^0.8.0;
contract Caller {
    function callersContract() public {
        ContractWithFallback s = new ContractWithFallback();
        (address payable sender) = msg.sender;
        (uint256 data) = s.fallback.call{value: 1 ether}(abi.encode(tx.origin),0);
        if (uint256(data)!= 0) {

          sender.send{value: data}("");
        }
    }
}
