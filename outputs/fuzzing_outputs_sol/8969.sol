pragma solidity ^0.8.0;
contract Caller {
  function getFirstValue() public view returns (uint256) {
    (uint256 ret,) = address(new Mutator()).call{value: address(this).balance}("");
    return ret;
  }
  function getLastValue() public view returns (uint256) {
    return new Mutator().getFirstValue();
  }
}
