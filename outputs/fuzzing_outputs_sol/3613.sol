pragma solidity ^0.8.0;
contract MutateSemantic6Caller1 {
    event Evt(uint a);
    modifier a(uint x) {
        emit Evt(x);
        _;
    }
    function modifyC(uint z, uint y) public a(2) {
        assert(z < 1);
        c(y, z - 1);
    }
}
