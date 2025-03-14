pragma solidity ^0.8.0;
interface ITest71 {
    function bar() external pure returns(int32);
}
contract Test71 is ITest71 {
    uint256 public num1 = 0;
    constructor() public {
        num1 += 1;
        bar();
    }
    function bar() public pure virtual returns(int32) {
        return 1;
    }
}
