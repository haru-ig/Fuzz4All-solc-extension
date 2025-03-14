pragma solidity ^0.8.0;
contract MutatedContract {

    uint constant _MIN_VALUE = 0;



    function add(_MIN_VALUE) public pure returns (uint _result) {
        _result = minValue + _MIN_VALUE;
    }
}
