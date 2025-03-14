pragma solidity ^0.8.0;
contract Example18 {
    function example18(uint256 input) public pure {
        Example17 test = new Example17();

        uint256 result = test.example17(input);

        require (result > 0);
    }
    function test(uint256 input) public view {
        if (input < 2) {
            Example17 test = new Example17();

            _check(test.example17(input));
        } else {
            _check(input);
        }
    }
    function mutated() public pure {
        Example17 test = new Example17();

        uint256 result = test.example17(1);
    }
}
