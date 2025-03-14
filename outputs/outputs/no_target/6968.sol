pragma solidity ^0.8.0;
contract TestPrecompiled0c859 {
    address payable payableRef;
}




pragma solidity ^0.8.0;


contract A {
    function f() external {
        uint8 t = 1 << 8;
    }
}

contract B {
    A a;
    bytes32 b;

    function g(uint256 x, bytes32 b) external returns (uint8 b3) {
        b3 = a.f() + t;
        b3 = a.f() + 2;
        t = 3;
        return t;
    }
}

contract C {
    address payable ref;

    constructor(address payable ref) public { this.ref = ref; }
    function f(uint256 x, address payable ref) external {
        uint256 n = (ref.balance - 1) * 2;
        ref.transferFrom(ref, ref, n);
    }
}
