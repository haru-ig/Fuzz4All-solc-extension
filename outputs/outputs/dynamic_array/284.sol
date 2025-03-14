pragma solidity ^0.8.0;
contract D9 {
    uint256[] public a;
    constructor() public {
        uint256[] memory b = new uint256[](10000);
    }
    function g(uint256 i, uint256 x, uint256 y) public {
        for(uint256 i = 0 ; i < 4 ; i = 100) {
            y = x * x + 5*y;
        }
    }
}
