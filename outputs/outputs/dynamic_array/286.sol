pragma solidity ^0.8.0;
contract D9 {
    uint256 [] b;
    uint256[] c;
    uint _count = 0;
    constructor() public {
        uint256[] memory d = new uint256[](10000);
    }
    function g(uint256 i, uint256 [] memory a, uint256 x, uint256 [] memory b) public {
        for (uint _count = 0 ; _count < 4 ; _count = _count + 1000) {
            uint256 z = a[_count] + 5*x;
        }
    }
}
