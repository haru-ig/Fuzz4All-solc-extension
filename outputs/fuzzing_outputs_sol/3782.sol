pragma solidity ^0.8.0;
contract Example17 {
    fallback () external payable {
        uint256 input;
        Example16(input).example16(input);
        Caller (input).example16(input);
        _check(input);
    }
}
