pragma solidity ^0.8.0;
contract Semantics {
    constructor() {
    }
    function add(uint a, uint b) public pure returns (uint256) {
        return a + b;
    }
    function sub(uint a, uint b) public pure returns (uint256) {
        return a - b;
    }
    function mul(uint a, uint b) public pure returns (uint256) {
        return a * b;
    }
    function div(uint a, uint b) public pure returns (uint256) {
        return a / b;
    }
}

pragma solidity ^0.8.0;
contract Reverting {
    constructor() {
    }
    function add(uint a, uint b) public pure returns (uint256) {
        return a + b;
    }
    function sub(uint a, uint b) public pure returns (uint256) {
        return a - b;
    }
    function mul(uint a, uint b) public pure returns (uint256) {
        return a * b;
    }
    function div(uint a, uint b) public pure returns (uint256) {
        return a / b;
    }
}

pragma solidity ^0.8.0;
contract Asserts {
    constructor() {
    }
    function add(uint a, uint b) public pure returns (uint256) {
        require(a + b >= 0, 'Add failed!');
        return a + b;
    }
    function sub(uint a, uint b) public pure returns (uint256) {
        require(a >= b, 'Sub failed!');
        return a - b;
    }
    function mul(uint a, uint b) public pure returns (uint256) {
        require(a * b > 0, 'Mul failed!');
        return a * b;
    }
    function div(uint a, uint b) public pure returns (uint256) {
        require(b > 0, 'Div failed!');
        return a / b;
    }
}
