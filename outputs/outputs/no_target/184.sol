pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
      k = 5;
    }
    function set(uint256 x) public {
        k = x - 2;

        return (k, x - 2);
    }

    function subset(uint256 x) public view returns (uint256, uint256) {
      (uint256 y, uint256 z) =  get(x);
      return (y, z + x + 2);
    }
}
