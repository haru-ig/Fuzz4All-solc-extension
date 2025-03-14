pragma solidity ^0.8.0;
contract Mutations {
    constructor() public {
        address[] memory addrs = new address[](2);
        addrs[0] = 99;
        addrs[1] = 55;
    }
    function mutate(uint256 s1, uint256 s2) public {
        uint256 v1 = s1;
        uint256 v2 = s2;
        assert(s1 + s2 == 100);
        assert(v1 > v2);
    }
}
