pragma solidity ^0.8.0;
contract Test2 {
    uint a;
    mapping(uint256=>uint) internal m;
    function MutateData() public {
        m[a] = 200;
    }
}
