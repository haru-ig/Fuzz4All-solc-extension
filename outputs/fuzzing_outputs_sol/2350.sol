pragma solidity ^0.8.0;
contract ContractWithoutFunctions {
  function isFallbackEnabled() public pure returns (bool) {
    return true;
  }
}

contract Caller {
  ContractWithoutFunctions c;
  uint256 num;

  function Caller() {
    c = new ContractWithoutFunctions();
    num = 0;
  }

  function sendBalance(uint256 amount)
    public
    view
    returns (uint256)
  {
    c.fallback();
    return c.mutatedCallWithEther();
  }

  function sendCall() public {
    c.fallback();
    c.mutatedCallWithEther();
  }

  function callAndHandlePotentialFail() public returns (uint256 out) {
    uint256 gasWanted = 3;
    uint256 gasUsed = 0;
    bytes memory outBytes;
    (outBytes, gasUsed) = c.mutatedCallWithEther();
    (out, gasUsed) = handleErr(outBytes, gasWanted);
    uint256 gasExpected = gasWanted - gasUsed;
    require(gasExpected >= 0, "Caller: insufficient gas for failed call to mutated function");
  }

  function testReceiveErr(bytes calldata bytesData, uint256 gasWanted) public returns (uint256) {
    (bool out, ) = handleErr(bytesData, gasWanted);
    require(out, "Caller: unexpected failure");
    return 10;
  }

  function testErr(uint256 gasWanted) public returns (uint256) {
    (bool out, ) = handleErr(bytes32(0), gasWanted);
    require(out, "Caller: unexpected failure - invalid memory location");
    return 10;
  }

  function handleErr(bytes memory outBytes, uint256 gasWanted) internal returns (bool success, uint256 gasUsed) {
    uint256 gasNeeded = gasWanted;
    uint256 outputLength;
    assembly {


      outputLength := mload(outBytes)
    }

    require(outputLength == gasNeeded, "Caller: failed to correctly handle a failing call");
    success = true;
    gasUsed = gasNeeded;
    return (success, gasUsed);
  }
}
