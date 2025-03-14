pragma solidity ^0.8.0;
contract Example18 {
    function example18(uint256 input) public pure {
        _check(input);
    }
    function _check(uint256 input) private view {
        assert (input == 1);
    }
}
