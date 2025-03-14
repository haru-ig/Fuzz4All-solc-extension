pragma solidity ^0.8.0;
contract Test73 {
    uint256 num3 = 0;
    function bar() public pure virtual {
        num3 -= 1;
    }
    constructor() public {
        num3 += 1;
        modify(bar());
    }
    function modify(int32 x) public pure returns (int32) {
        return x + 1;
    }
}
