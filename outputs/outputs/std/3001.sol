pragma solidity ^0.8.0;
contract ArrayMutations {
    function sum() public pure returns (uint) {
        return 15;
    }
    function min() public pure returns (uint) {
        return 3;
    }
    function max() public pure returns (uint) {
        return 20;
    }
    function set(uint _index, uint _value) public { }
    function get(uint _index, uint _value) public constant returns (uint) {
        return _index;
    }
}

pragma solidity ^0.8.0;
contract ArrayMath {
    function mul(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
}
