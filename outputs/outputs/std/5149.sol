pragma solidity ^0.8.0;
contract Mutate {
    bytes32 public constant bytes32Type = 'bytes32';
    address public constant addressType = address(100);
    uint public constant uintType = 100;
    bytes32 private _data = 0x01;
    constructor() {
    }

    function create() public returns (address) {
        return addressType;
    }

    function newMutatedFunction() public {
        uintType = uintType + 42;
        addressType = addressType;
        addressType.value(uintType)();
        bytes32Type.value(uintType)();

        f();
        SemiSemantics7.set(uintType);
        f();
        SemiSemantics8.set('bytes32');
        f();
        f();
        SemiSemiSemantics.set(address(0xface));
        f();
        SemiSemiSemantics.set(MutateBytes32.set(bytes32Type, bytes32Type));
    }

    function f() public {
        bytes32Type.value(_data)();
    }
}

pragma solidity >=0.5.16 <= 0.7.0;
contract Semantics9 {
    constructor() {
        SemiSemiSemantics.set(address((new Mutate.Mutate()).create()));
    }
}
