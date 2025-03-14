pragma solidity ^0.8.0;
contract Test {
    address public f;
    uint public k;
    constructor() public {
        k = 5;
    }
    function get() public view returns (uint[], uint[] memory){
        uint[] memory n = new uint[](20);
        for (uint i = 0; i < 20; i++)
            n[i] = k + i;
        return (n[1:10], n[20-k:20]);
    }
}
