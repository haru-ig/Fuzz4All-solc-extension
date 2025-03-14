pragma solidity ^0.8.0;
contract Mutate_0024 {
    constructor(uint256 a) public {
        require(a >= 0, "Bad");
        a++;
        require(a > 0, "Bad");
    }
}

pragma solidity ^0.8.0;
library Check_0024 {
    function bad() internal pure returns (uint256) {
        require(false, "Bad");
        return 0;
    }
}
library Check_0025 {
    function bad(uint256 a) internal pure returns (uint256) {
        require(a == 0, "Bad");
        return 0;
    }
    function good(uint256 a) internal pure returns (uint256) {
        return a;
    }
}
