pragma solidity ^0.8.0;
contract Mutation {
    function add_one(uint[] memory _array) public {
        _array[2] = _array[1] + 1;
    }
}
pragma solidity ^0.8.0;
contract Mutation {
    function increase_one(uint[] memory _max_value) public returns(uint) {
        uint _max_value_add_one = _max_value + 1;
        return _max_value_add_one;
    }
}
pragma solidity ^0.8.0;
contract Mutation {
    function multiply(uint _multiplication_a, uint _multiplication_b) public returns(uint) {
        uint _multiplication = _multiplication_a * _multiplication_b;
        return _multiplication;
    }
}
