pragma solidity ^0.8.0;
contract Mutate {
    modifier isNonNegative(uint _x) {
        require(_x >= 0,"AssertionMsg");
        _;
    }
    public function test() public isNonNegative(56) {
    }
    function test1() public constant {
    }
}
