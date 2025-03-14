pragma solidity ^0.8.0;
contract Mutate_0022 {
    constructor(uint256 a) public {
        require(a >= 0,"bad");
        require(a > 0,"bad");
    }
}

contract Fail_0023 {
    constructor(uint256 a) public {
        require(a >= 0, "");
    }
    function f() public {
        uint256 b = 0;
        require(b >= 0, "bad");
    }
}
