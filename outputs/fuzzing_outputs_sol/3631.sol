pragma solidity ^0.8.0;
contract Caller4 {
    uint immutable foo;

    constructor (uint _foo) internal {
        foo = _foo;
    }

    function execute() external {
        uint z = mutateSemantic1(3, 4);
        assertEq(1, foo);
    }

    function mutateSemantic1(uint256 x, uint256 y) public pure returns (uint256) {
        uint x2 = x + 3*x;
        uint256 z = modifyC(x2, y);
        require(z == 1);
        return (y + z);
    }

    function modifyC(uint256 x, uint256 y) public pure returns (uint256) {
        return 2*x + y;
    }

    receive() external payable {}

    fallback() external payable {}
}
