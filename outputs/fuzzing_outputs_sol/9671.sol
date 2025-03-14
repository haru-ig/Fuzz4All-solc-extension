pragma solidity ^0.8.0;
contract CallReceiver {
    uint32 internal uint;
    receive() external payable {
        uint += 5;
    }
}

pragma solidity ^0.8.0;
contract CallSender is ERC20("Token Contract", "TKNT") {
    constructor() ERC20("TKNT", "TKNT") {
        tokenSupply += 1000;
    }
  function callReceiver(address _to, uint _value) public returns (uint success, bool) {
    uint success;
    if (address(_to).call{value: _value}()) success = (uint(address(this).balance));
    return (success, success > 0);
  }
}
