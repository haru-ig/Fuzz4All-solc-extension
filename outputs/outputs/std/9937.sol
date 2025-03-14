pragma solidity ^0.8.0;
contract S12Mutated12 {
    uint8 x1 = 12;
    uint256[] b;
    constructor () {
      assert(address(b[255]) == address(0));
    }
    function getBalance() public view returns (uint8) { return x1; }
    function setAndReturn() public {
      b.push(x1);
      x1 *= 2;
    }
}
