pragma solidity ^0.8.0;
contract Mutator2 {
    uint256 internal b = 0;
contract internalVar2 {
    uint256 internal a = 0;
    uint internal constant incrementDelay = 9000;
}
    uint256 count;
    uint256 internal var2;
    constructor() public {
        internalVar2.a = 42;
        a = 0;
        internalVar2.a = 0;

    }
    function stop() public {
        internalVar2.a = 42;
        internalVar2.a = 0;
    }
    function increment_var2() public returns(uint256) {
        var2 = var2+1;
        return var2;
    }
    function increment_b() public returns(uint) {
        b = b+1;
        return b;
    }
    function increment_band_b() public returns(uint) {
        b = b+1;
        b = b+1;
        b = b+b;
        return b;
    }
    function get_b() public returns(uint) {
        return b;
    }
    function increment_b_and_var2() public returns(uint) {
        b = b+1;
