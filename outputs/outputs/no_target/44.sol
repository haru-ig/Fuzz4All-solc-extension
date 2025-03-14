pragma solidity ^0.8.0;
contract A {
    function f(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}

pragma solidity ^0.8.0;
contract A {
    [allowCaller]
    function f(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}

pragma solidity ^0.8.0;
contract A {
    [allowContract]
    function f(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}

pragma solidity ^0.8.0;
contract A {
    [allowContract_abi]
    function f(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}

pragma solidity ^0.8.0;
contract A {
    [allowCaller]
    function f(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}
