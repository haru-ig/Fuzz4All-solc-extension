pragma solidity ^0.8.0;
contract Modifiers {
    constructor() { }
    function requirePositive(address _to, uint256 _value) internal view {
        require(_value > 0, "Not positive");
        require(_to.balance >= _value, "Not enough funds");
    }
    function requirePositiveZero(uint256 _value) internal view {
        require(_value > 0, "Not a positive value");
    }
    function requirePositiveMin(uint256 _value) internal view {
        require(_value >= MINIMUM, "Not at least minimum");
    }
    function requirePositiveMax(uint256 _value) internal view {
        require(_value <= MAXIMUM, "Not at most maximum");
    }
    function requirePositiveValue(uint256 _value) internal view {
        require(_value >= MINIMUM AND _value <= MAXIMUM, "Not a valid value");
    }
    function requirePositiveMinValue(uint256 _value) internal view {
        require(_value >= MINIMUM, "Not a minimum");
    }
    function requirePositiveMaxValue(uint256 _value) internal view {
        require(_value <= MAXIMUM, "Not a maximum");
    }
    function requireEqualMaxMin(uint256 _max, uint256 _minimum) internal view {
        require(_max >= _minimum, "Can't be 0 or under");
    }
}
