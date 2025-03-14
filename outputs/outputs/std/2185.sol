pragma solidity ^0.8.0;
contract EquivalentA is MutableA {
    function getFoo() public pure override returns (uint) {
        return super.getFoo();
    }
    function setFoo() public override {
        super.setFoo();
        return;
    }
}
