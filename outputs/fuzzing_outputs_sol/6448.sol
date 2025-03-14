pragma solidity ^0.8.0;
contract C {
    uint public x = 3;
    receive() external payable {
        x += 1;
    }
}

contract FallbackFunctionCaller {
  mapping (bytes4 => function (bytes[] memory)) internal functions;

  function sendCallTo(bytes4 signature, bytes[] memory args) {
    require(functions[signature].length < 256, 'Too many functions');
    functions[signature].push(address(new C()));
    functions[signature](args);
  }

  function sendEthTo(address addr) public payable {
    bytes[2] memory temp;
    temp[0] = bytes.toBytes(this);
    temp[1] = addr.call.value(msg.value)();
    sendCallTo(keccak256(abi.encodePacked(temp)), temp);
  }

  function callFunctionBySignature(bytes32[] memory signatures, bytes[] memory args) public {
    for (uint256 i = 0; i < signatures.length; i++) {
      bytes4 sig = signatures[i];
      C c = C(function () external payable virtual returns (uint256) { return 1; });
      sendCallTo(sig, args);
    }
  }
}
