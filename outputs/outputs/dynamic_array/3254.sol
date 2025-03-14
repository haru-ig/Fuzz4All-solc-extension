pragma solidity ^0.8.0;
contract Mut7 {
    enum B {
        a,
        aa,
        ab
    }

    B[] b;

    modifier B32() {
        B32Inner;
        _;
    }

    function B32Inner() pure internal {
        assembly {
            mstore(0, b0)
        }
    }

    function mut6_set(bytes32 key, B value) public B32 {
        b[key] = value;
    }
}

pragma solidity ^0.8.0;
contract Mut8 {
    enum B {
        a,
        aa,
        ab
    }

    B[] b;

    function mut6_assign(bytes32 key, B value) public {
        b[key] = value;
    }
    function B32Inner() pure internal {
        assembly {
            pop r
            b0 := r
            r := mload(0)
        }
    }
}
