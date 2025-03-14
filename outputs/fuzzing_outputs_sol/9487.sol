pragma solidity ^0.8.0;
contract ContractWithFallback14 {
  function modify0(address foo, uint x) public payable {
    if (msg.data.length == 0)
      foo.call{value: x}('');
  }
}
pragma solidity ^0.8.0;

contract ContractWithFallback15 is ContractWithFallback12 {
  function modifyWithoutFallback(address foo, uint x) public payable {
    if (msg.data.length == 0) {
      foo.call{value: x}('');
    } else {
      foo.call(msg.data);
    }
  }
}
