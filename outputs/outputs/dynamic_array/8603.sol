pragma solidity ^0.8.0;
contract SemanticallyEquivalencySolidity91 {
    constructor() payable { }
}

contract SemanticallyEquivalencySolidity300 {
    function test() external{
        for(uint i = 0; i < 10; i++){
            testInternal();
        }
    }
    function testInternal() public {}
}
contract SemanticallyEquivalentSolidity783 {
    uint256 public constant x;
    constructor(uint256 _x) {
        x = _x;
        assert(x == _x && i0);
    }
    bool private i0;
}
