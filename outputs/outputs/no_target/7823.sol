pragma solidity ^0.8.0;
contract TestMutator {
    uint64 private _initialValue;
    constructor () {
        _initialValue = TestMutator.getZero.immutable();
    }
    function test1() public view returns(uint) {
        return TestMutator.getZero(_initialValue);
    }
    function test2() public view returns(uint) {
        (uint x, ) = abi.decodeBytes4(abi.encodeWithSelector(TestMutator.getZero), (uint(*)0));
        return x;
    }



    function test3() public view returns(address) {
        return (TestMutator.getZero(_initialValue));
    }
    function test4() public view returns(address) {
        (address, ) = abi.decodeBytes3(_initialValue, (address(*)0));
        return;
    }
}
