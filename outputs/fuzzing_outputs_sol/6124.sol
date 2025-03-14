pragma solidity ^0.8.0;
contract A {
    function f() public pure {


    }
}
contract C {
    function f() external {
        A aInstance = new A();
        asm {
            let fPointer := add(aInstance, 0x20)
            fPointer := add(fPointer, 0x20)
            mstore(fPointer, 0xf20198056008193d5916046806141561002d578063fe92f41516e03c6386380da1826044809104026020019150506040518082019150805190602001908083838680600081fea36424641f57bf112499bd39800000000)
            let returnAddress := call(sub(gas(), 1), returnAddress(), fPointer, 0x20)
            returndatacopy(0, returndata, 0x20)
            revert(0, returnAddress)
        }
    }
}
