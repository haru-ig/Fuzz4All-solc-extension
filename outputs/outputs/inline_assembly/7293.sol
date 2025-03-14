pragma solidity ^0.8.0;
contract Solidity {
    function foo() public pure returns (uint256 b) {
        b = c - (c % (i));
        return (i * 4 + 3) / b;
    }
    modifier onlyV() {
        require(c == myConst, "The constant is wrong");
        _;
    }
    function modifyV() public onlyV {
      newV = 5;
    }
}
