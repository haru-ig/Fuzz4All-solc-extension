pragma solidity ^0.8.0;
contract UpdatesAFunction {
  uint256 constant constantValue = 125;
  uint256 public geneCounts;
  uint256 private g;
  function changeGeneCount(uint256 _g) public {
    geneCounts = _g;
  }
  function getGeneCount() public view returns (uint256) {
    return geneCounts;
  }
}
contract FunctionReturningTestCalls {
  uint256 constant constantValue = 125;

  address payable owner;
  uint256 value;
  function set(uint256 _value) public {
    owner = payable(msg.sender);
    value = _value;
  }
  function returnFunc() public {
    value = constantValue;
  }
  function callReturnFunc() public {
    uint256 val = call(this.returnFunc.selector);
    value = call(this.returnFunc.selector);
  }

  function callPayableFunc() public {
    uint256 val = call(this.returnFunc.selector, keccak256(""));
    value = call(this.returnFunc.selector, keccak256(""));
  }

  function callPayableFunc(bytes calldata _sig) public {
    value = call(this.returnFunc.selector, _sig, "");
    value = call(this.returnFunc.selector, _sig, "");
  }



  function call(uint256 selector) public returns (uint256) {
    return address(this).functionCall(abi.encodeWithSelector(selector));
  }

}


contract SolidityVsInlineAssemblyVsAssembly {
  Bytes4 constant GET_GENECOUNT = 0xfad909a7;
  bytes4 constant SET = 0xa9059cbb;
