pragma solidity ^0.8.0;
contract Mutate0015bA {
    uint256 input;
    modifier m() {
        input = input * 10;
        _;
    }
}
contract Mutate0015bB {
    uint256 input;
    function f() public view m returns(uint256 x) {
        x = input * 10;
        return x;
    }
}
contract Mutate0015bC {
    uint256 input;
    function f() public view m {
        input = input * 10;
    }
}

contract Mutate0015bD {
    uint256 input1;
    uint256 input2;
    modifier m() {
        input1 *= 10;
        input2 *= 10;
        _;
    }
}
