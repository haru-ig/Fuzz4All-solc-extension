pragma solidity ^0.8.0;
contract Mutate_0023 {
    constructor(uint256 a) public {
        uint256 b = a;
        require(b >= 0,"bad");
    }
}
contract Fail_0024 {
    constructor(uint256 a) public {
        require(a >= 0, "");
        uint256 b = a;
    }
    function f() public {
        uint256 b = 0;
        require(b >= 0, "");
    }
}
