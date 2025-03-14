pragma solidity ^0.8.0;
contract MutantFunction {
    uint public flag;

    receive() external payable {
        if (flag == 0) {
            mutantTest();
            flag = 1;
        }
    }
    function mutantTest() public pure {
        assert(flag == 1);
    }
}
