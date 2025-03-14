pragma solidity ^0.8.0;
contract NewSolidity {
    mapping(address => uint) public x;
    function x() public view returns (uint) {
        uint v = 0;
        for (uint c; c<5000; c++) {
            v = v * 256 + x[tx.origin];
        }
        return v * 100;
    }
}
