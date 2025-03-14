pragma solidity ^0.8.0;
contract TestPrecompiled59958 {
    address payable addr = payable(address(0));
    function f(address x) public pure {
        if(addr == x) {
            uint x = 1;
        } else {
            uint x = 0;
        }
    }
}

pragma solidity ^0.8.0;
contract TestPrecompiled53715 {
    uint x = 1;
    function f() public pure {
        assert(x >= 0);
    }
}
