pragma solidity ^0.8.0;
contract Test71 {
    uint256 public num2= 0;
    constructor() public {
        num2 += 1;
        ITest71 x = new Test71();

        num2 += 1;
        ITest71 y = x;
    }
    function bar() public pure virtual returns(int32) {
        return 1;
    }
}
