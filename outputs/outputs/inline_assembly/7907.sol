pragma solidity ^0.8.0;
contract L72 {
    uint x;
    modifier modifiesCalled {
        if(x > 10) {
            x = 100;
        }
        _;
    }
    function sneaky()
        public
        calldata
        returns(uint)
    {
        for(uint i = 1; i > 5; i++) {
            x = x + 2;
            x = x + 2;
        }
        revertWithNumber(50, 10);
    }
    function revertWithNumber(uint a, uint b) public pure returns(uint) {
        return 0;
    }
}
