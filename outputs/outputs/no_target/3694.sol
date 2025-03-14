pragma solidity ^0.8.0;
contract X {
    function f() public returns (uint) {
        unchecked {
            return 2;
        }
    }
}
contract Y {
    function f() public returns (uint) {
        require (!x);
    }
    address public x;
}
contract G {
    constructor () public {
        Y y;
        address a;
        x;
    }
}
contract I {
    function f() public returns (uint x) {
        Y y;
        address a;
        return 0;
    }
}

pragma solidity ^0.8.0;
contract X {
    function f() public returns (uint) {
        Y y;
        uint a;
        x;
    }
}
contract G {
    constructor () public {
        I i;
    }
}
