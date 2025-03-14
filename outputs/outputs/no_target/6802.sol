pragma solidity ^0.8.0;
contract TestMutated73 {
    constructor () {
        require(this.testMethod(uint64(-1)));
    }

    function testMethod(uint x) public pure returns (bool) {
        return x < 10 ** uint32(22);
    }
}
