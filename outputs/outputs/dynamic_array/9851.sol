pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    uint256[] x = [0,2,4,8,16,32,64, 128, 256, 512];
    function inc(bytes calldata b) public pure returns (uint[] memory) {
        uint[] memory b2 = new uint[](b.length);
        uint[] memory ret = [0];
        for (uint i = 0; i < b.length; i++)
            ret.push((b[i]+1)%256);
        return ret;
    }
}
