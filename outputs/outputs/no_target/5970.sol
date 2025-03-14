pragma solidity ^0.8.0;
contract Mutator {
    bytes32 internal immutable bArr1;
    bytes32 public immutable bArr;
    constructor(bytes memory b) {
        bArr = b;
    }
    function f() public pure {
        bArr = bArr1;
    }
}

pragma solidity ^0.8.0;
contract Mutator2 {
    bytes32 internal immutable bArr1;
    bytes public immutable bArr;
    constructor(bytes memory b) {
        bArr1 = b;
    }
    function f() public pure {
        Mutator mutator = new Mutator(bArr1);
        mutator.f();
    }
}
