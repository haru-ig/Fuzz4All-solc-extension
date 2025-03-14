pragma solidity ^0.8.0;
contract Test72 {
    uint256 public num2 = 0;
    constructor() public {
        num2 += 1;
        modify(bar());
    }
    function bar() public pure returns(int32) {
        return 1;
    }
    function modify(int32 x) public pure returns (int32) {
        num2 += 1;
        return x + num2;
    }
}
