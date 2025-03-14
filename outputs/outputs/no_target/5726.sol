pragma solidity ^0.8.0;
contract Baz {
    uint immutable y;
    receive() external payable {
        y = 1000;
    }

    function f() public returns(uint) {
        return y;
    }
}

pragma solidity ^0.8.0;
contract Baz {
    uint constant _zero = 0;
    uint y;
    receive() external pure {
        y = 1000;
    }

    function f() public returns (uint) {
        return y;
    }
}

pragma solidity ^0.8.0;
contract Baz {
    uint y;
    receive() external pure {}
}
