pragma solidity ^0.8.0;
contract Caller {
  function callAndReturn(address[] memory args) public view returns (address) {
    require(args.length > 0, "Caller: must supply at least one address");
    return safeCallAndReturn(address(this), args);
  }
}
