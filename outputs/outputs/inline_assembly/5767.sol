pragma solidity ^0.8.0;
contract MutatedBlock2Mutation80 {
    uint public constant ONE_MINUTE = 60;
    uint public constant SECONDS_TO_MINUTES = 60;
    uint public constant MINUTES_TO_SECONDS = (100*60*60/ONE_MINUTE);
    uint public constant SECONDS_TO_HOURS = (_SECONDS_TO_MINUTES/(60*60));
    uint public constant MINUTES_TO_DAYS = (MINUTES_TO_SECONDS/_SECONDS_TO_MINUTES);
    uint96 public _var;
    uint public _another = 0;
    function test1() public returns (uint) {
        _var = _SECONDS_TO_MINUTES*SECONDS_TO_HOURS*SECONDS_TO_MINUTES*SECONDS_TO_MINUTES + _SECONDS_TO_MINUTES*MINUTES_TO_SECONDS*MINUTES_TO_SECONDS + _SECONDS_TO_MINUTES*MINUTES_TO_SECONDS*_SECONDS_TO_MINUTES*MINUTES_TO_SECONDS;
        _var = _var*SECONDS_TO_MINUTES*SECONDS_TO_HOURS
