pragma solidity ^0.8.0;
contract Test71 {
    uint256 public num1 = 0;
    constructor() public {
        num1 += 1;
        bar();
    }
    function bar() public pure virtual returns(int32) {
        num1 += 1;
        return 1;
    }
}
