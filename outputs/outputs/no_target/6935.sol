pragma solidity ^0.8.0;
contract TestPrecompiled53714Mutated {
    function f(address x) public pure {
        x = 0x6aa;
        assert(x == 0xff);
        f(x);
    }
}

pragma solidity ^0.8.0;
contract TestPrecompiled53714Fail {
    function f() internal pure {
        assembly {
            let ptr := mload(0x0)
            mstore(ptr, mload(ptr))
        }
    }
}
