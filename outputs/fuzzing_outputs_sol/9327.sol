pragma solidity ^0.8.0;
contract ContractWithFallback {
  address payable public payee;

  function pay() payable {
    uint x;
    (bool success, ) = payee.call{value: address(this).balance}(abi.encode("fallback", 1));

    if (!success) {
      x = 0;
    }
  }

  function payTo(address payable iad, uint32 value) payable {
    abi.encode(iad, value);
  }

  function payFrom(address payable owner, uint32 value) payable {
    (bool success, bytes memory output) = owne.call{value: value}(abi.encode("fallback"));

    assert(success);


    assert(abi.decode(output, (address)));
  }
}
