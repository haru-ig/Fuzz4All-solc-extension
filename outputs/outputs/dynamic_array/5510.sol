pragma solidity ^0.8.0;

contract Test72 is Test71 {
    function bar() external pure virtual returns(int32) {
        num1 += 1;
        return bar();
    }
}
