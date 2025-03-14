pragma solidity ^0.8.0;
contract C9 {
        function f(uint256 i, uint256 x, uint256 y) public {
        for(uint256 i = 0 ; i < y.length ; i = i+1) {
            y = x * x + 5*y;
        }
    }
}

pragma solidity ^0.8.0;


contract C9 {
    constructor(uint256 x, uint256 y) {
        uint256[] memory a = new uint256[](100);
    }
    function g(uint256 x, uint256 y) public returns (uint256) {
        C9.f(0, x, y);
        emit x(x);
        return x;
    }

    function x(uint256 y) public pure {
            assert(y == uint256(address(this).balance));
    }
}
