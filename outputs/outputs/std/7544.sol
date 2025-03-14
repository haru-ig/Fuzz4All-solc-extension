pragma solidity ^0.8.0;
contract WorseCase {
    uint256 constant public x = 7;
    uint256 public constant y = 13;
    uint256 public z;
    function f() public pure {
        if(x == 2)
            z = x + y;
        else
            z = x - y;
    }
}
contract WorseCase2 {
    uint256 constant public x = 77;
    uint256 public constant y = 13;
    uint256 public z;
    function f() public pure {
        if(y == 2)
            z = x + y;
        else
            z = x - y;
    }
}
