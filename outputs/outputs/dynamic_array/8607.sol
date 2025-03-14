pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity92 {
    uint _arrayLength;

    function mutatorTest23() public payable {
        _arrayLength++;
    }
    function mutatorTest24() external payable {}
    function mutatorTest25() public nonpayable {}
    function mutatorTest26() {
        uint _arrayLength = this.length + this[this.length];
    }
    function mutatorTest27() public override {
        _arrayLength++;
    }
    function mutatorTest28() public override payable {
        _arrayLength++;
    }
    function mutatorTest29() external override {
        _arrayLength++;
    }
    function mutatorTest30() public virtual payable {
        _arrayLength++;
    }
}
