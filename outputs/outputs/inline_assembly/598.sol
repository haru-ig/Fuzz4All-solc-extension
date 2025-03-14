pragma solidity ^0.8.0;


contract HelloWorld {
    uint256 _counter = 0;

    function setCounter() public {
        _counter = 2;
    }


    function checkCounter() public view returns (uint256) {
        return _counter;
    }
}
