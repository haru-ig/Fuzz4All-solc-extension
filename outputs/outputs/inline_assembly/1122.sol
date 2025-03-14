pragma solidity ^0.8.0;
contract MutatedContract {
    uint x;

    function _calculate() public pure internal returns (uint) {
        return 1;
    }

    function _modify() public {
        x = 4;
        if (x == 45) {
            x = _calculate();
        }
        else {
            x = _calculate();
        }
    }

    receive() external payable {
        if (msg.value == 0) {
            return;
        }
        _modify();
        emit xChange(x);
    }

    event xChange(uint);
}
