pragma solidity ^0.8.0;
contract MyContract {
    uint public constant CONSTANT = 0;
    uint public constant CONSTANT_VARIABLE = 3;
    uint public constant CONSTANT_ARRAY = [5];
    function method() public pure returns (uint) {
        if (uint(CONSTANT) < uint(CONSTANT_VARIABLE)) {
            return 3;
        }
        return 4;
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    uint public constant CONSTANT = 0;
    uint public constant CONSTANT_VARIABLE = 3;
    uint public constant CONSTANT_ARRAY = [5];
    function method() public pure returns (uint) {
        uint x = uint(CONSTANT);
        uint y = uint(CONSTANT_VARIABLE);
        uint z = uint(CONSTANT_ARRAY);
        if (x < y) {
            x = uint(CONSTANT_ARRAY);
        }
        return uint(x < y? y : x);
    }
}
