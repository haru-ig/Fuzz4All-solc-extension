pragma solidity ^0.8.0;
contract Mutated {
    bytes1[5] arr;
    function foo() public view returns (uint256) {
      return arr[2];
    }
    function setarr(bytes1[5] memory _arr) public {
      arr = _arr;
    }
}
