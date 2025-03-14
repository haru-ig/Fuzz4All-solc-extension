pragma solidity ^0.8.0;
contract Test72 {
    uint256 num2 = 0;
    constructor() public {
        num2 += 1;
        modify(bar());
    }
    function bar() public pure virtual returns(int32) {
        return 2e0;
    }
    function modify(int32 x) public pure returns (int32) {
        return x + 1;
    }
}
