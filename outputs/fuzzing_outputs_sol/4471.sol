pragma solidity ^0.8.0;
contract ContractCallerModified {
    constructor() {}
    function () external payable {}
    fallback () external payable {

    }
}
contract ContractCallerFallback {
  function () external payable {}
}
