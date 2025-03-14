pragma solidity ^0.8.0;
contract FallbackContract
{
  function fallback() public payable {
  }
}
pragma solidity ^0.8.0;
contract BasicCall {
  address payable _payTo;

  constructor(address payable payTo) {
    _payTo = payTo;
    _payTo.transfer(address(this).balance);
  }

  function sayHi() public payable {}
}

pragma solidity ^0.8.0;
contract Test
{
  address payable[] addr;
  uint8[] i;

  constructor() {
    addr[0] = payable(address(new Caller));
    addr[1] = payable(address(new FallbackContract));
    i[0] = 5;
    i[1] = 3;
  }

  fallback() pure public {
    for (uint8 i = 0; i <= addr.length; i++)
      _perform(addr[i], i);
  }

  function _perform(address payable payTo, uint8 i) private {
    bytes1 sig = 0x606060405260405234801561000457600080fd5b50604051602080610135038061014e608061002a6000396000f3fe60806334833414151561025e57600080fd5b34801561001557600080fd5b50610093565b60405180910390f35b34801561002a57600080fd5b5061016d565b6040518082815260200191505060405180910390f35b34801561006657600080fd5b506101ab565b6040806101418063f503f5b780634ec7b39b14600160a060025a34801561013557600080fd5b5061018f565b60008054906101e8565b60405180910390fd5b34801561
