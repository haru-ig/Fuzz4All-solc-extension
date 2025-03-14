pragma solidity ^0.8.0;
contract Unsafe3C {
    function set(uint128 _value) public {
        unchecked {
            _value = uint128(_value);
        }
    }
    function setTwo(address payable _value) public {
        unchecked {
            _value = payable(_value);
        }
    }
}
