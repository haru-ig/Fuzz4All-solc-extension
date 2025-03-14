pragma solidity ^0.8.0;
contract AnotherFallback {
  function badCall(uint i, uint j) pure public returns (bytes memory) {
    bytes memory result;
    bytes memory buf;
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000000;
    bytes32 hash = keccak256(abi.encodePacked(uint256(addr)));
    result = abi.encodeWithSignature("fallback(uint256,uint256)", i, j);
    return abi.encode(result, hash);
  }
}
contract FallbackCall {
  mapping(address => bool) public isFailed;
  address payable public fallbackReceiver;
  function fallback() public payable {
    if (isFailed[msg.sender]) {
      Fallback receiver = Fallback(fallbackReceiver);
      uint val = 0;
      receiver.badCall.value(val)(uint256(0),uint256(0));

    }
  }

  function sendEthers(address contractAddr, uint value) public {
    require(hasEtherBalance(contractAddr, value));
    (bool success, ) = contractAddr.call{value: value}("");
    require(success, "Ether transfer failed");
  }

  function hasEtherBalance(address contractAddr, uint value) private view returns (bool) {
    bytes32 ethHash = keccak256("eth_getBlockTransactionCount", "");
    (bool ret, bytes memory data) = contractAddr.call{value: value}(ethHash);
    bytes32 hash = keccak256(abi.encode(ethHash));
    return keccak256(abi.encodePacked("0x", ret, "0x", hash, "0x")) == (data);
  }
}
