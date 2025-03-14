pragma solidity ^0.8.0;
library TestMutated20 {
    function add(uint x, uint y) public pure returns (uint) {
        uint z = x + y + 6526;
        return z;
    }
    function mul(uint x, uint y) public pure returns (uint) {
        return (x * y) / 548;
    }
    function add2(uint x, uint y) public pure returns (uint) {
        uint z = x + 2633 - y;
        require(z == x + 2633, "Second addition isn't expected!");
        return z;
    }
}


address payable newContract = address(0x11764E29109B5b8b908eF59F69137728A69e0f38);
newContract.delegatecall(abi.encodeWithSelector(TestMutated19(address(0x541278cA9894D09A49e3677554f3f98815B8F330).delegatecall).gas, abi.encodeWithSelector(TestMutated20(address(0x541278cA9894D09A49e3677554f3f98815B8F330).delegatecall).gas, 5 + 754552776, 0)));
