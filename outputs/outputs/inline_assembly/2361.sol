pragma solidity ^0.8.0;

contract MutatorB
{
    MutatorA mA;
    constructor() public {
        mA = new MutatorA();
    }
    function subtract() public {
        mA.subtractA(10);
        mA.subtractA(11);
    }
    function modify() public {
        mA.increaseA(5);
        mA.increaseA(6);
    }
    function divide(uint x) public {
        mA.multiplyB(5);
        mA.multiplyB(10);
    }
}

pragma solidity ^0.8.0;
contract MutatorA is Mutator
{
    constructor() public {}
    function subtractB(address user, uint x) public {
        uint b;
        b = safeDiv(safeMod(A, x), x);
        emit Replaced(user);
        B = x - b;
    }
    function divisible() public {
        if (A % 5!= 0 || B % 10!= 0) revert();
    }
    function safeMod(uint x, uint y) internal pure returns (uint z) {
        if (y == 0) return 0;
        assembly {
            z := mod(x, y)
        }
    }
    function safeDiv(uint x, uint y) internal pure returns (uint z) {
        if (y == 0 || x == 0) return 0;
        assembly {
            z := div(x, y)
        }
    }
}
contract ContractA is MutatorA
{
    MutatorC mC;
    function divisible() public override {
        mC = new MutatorC();
        require(A == B + mC.safeMod(B, 50));
    }
    function revertableSubtraction() public override {
        require(safeMod(A, 2)!= 0, "no zero");
        mC = new MutatorC();
        if (A!= (B + mC.safeMod(B, 50))) revert();
    }
    function revertableAddition() public override {
        require(safeAdd(3, 4)!= 7, "sum should not be 7");
        mC = new MutatorC();
        if (A!= (B + mC.safeMod(B
