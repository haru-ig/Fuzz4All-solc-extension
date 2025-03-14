pragma solidity ^0.8.0;
contract L72 {
    uint x;
    uint y;
    uint32[3, 3] a;
    modifier modifiesCalled {
        if(a[block.number, block.timestamp][block.difficulty - 1 + block.timestamp][block.timestamp][block.blockhash(block.number - 5)] > 5) {
            revert();
        }
        _;
    }
    function sneaky() public {
        for(uint i = 1; i > 5; i++) {
            a[block.number, block.timestamp][block.difficulty - 1 + block.timestamp][block.timestamp][i] = a[block.number, block.timestamp][block.difficulty - 1 + block.timestamp][block.timestamp][block.blockhash(block.number - 5)] + 2;
        }
        revert();
    }
}
