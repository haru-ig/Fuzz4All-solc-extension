pragma solidity ^0.8.0;
contract Semantic0024 {
    uint public uint;
    function change() public pure {
        uint = 1;
    }
}
contract Semantic0025 {
    function update() public pure {
        uint uint;
        uint = 1;
    }
}
contract Semantic0026 {
    function update() public pure returns (uint) {
        uint uint;
        uint = 1;
        return uint;
    }
}
contract Semantic0027 {
    function update00() public pure {
        uint uint;
        uint = 1;
    }
}
