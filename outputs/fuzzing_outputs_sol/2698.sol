pragma solidity ^0.8.0;
contract Caller is TesterInterface {
    function execute() external returns (uint x) {

        uint y = 8;

        uint z;
        TesterInterface _tester;
        _tester.set(x);

        _tester.call();
        return x + y;
    }
}
