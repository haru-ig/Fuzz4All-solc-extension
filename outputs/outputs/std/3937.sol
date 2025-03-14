pragma solidity ^0.8.0;
library MyMath {
    function mul(uint64 a) public pure returns (uint64) {
        uint256 aLow = uint256(a);
        return aLow * 2;
    }
}
contract Bar {
    function myContract() public {
    uint64 a;
    uint64 b;
    a = 2;
    b = 3;
    uint64 newA= MyMath.mul(a);
    }
}
