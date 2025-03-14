pragma solidity ^0.8.0;
contract MutatedCaller {
    function get() public pure returns (uint) {
        uint _val = 5;
        uint  _val2 = 7;
        uint _val3 = 11;
        uint _val4 = 13;
        uint _val5 = 17;
        uint _val6 = 19;
        uint _val7 = 23;
        _val5;
        _val6;
        _val7;
        return 5;
    }
}
