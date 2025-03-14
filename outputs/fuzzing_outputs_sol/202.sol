pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback3 {
    mapping(address => bool) notSawFallback;
    constructor() {}
    fallback() external payable {
    }
    function execute() public {
      if (!notSawFallback[msg.sender]) {
        selfdestruct(1);
      }



      assembly {
        create(0, 0, 0)
      }
    }
}
