pragma solidity ^0.8.0;
contract Change
{
    function _doSomething(string memory) public {
        if (true) {
            if (_isFallback) {
                _doSomething("this gets ignored");
            }
        } else {
            _doSomething("this will be ignored");
        }
    }
}
