pragma solidity ^0.8.0;
contract Example {
    function mut(uint256) public pure returns(uint256, uint256) {
        return (42, 42);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    constructor(Simple s) public {
        s.fallback(42);
    }
    function get() public pure returns(uint256) {
        (, uint256 res) = Example.mut(42);
        return res;
    }

}
