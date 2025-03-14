pragma solidity ^0.8.0;
contract ValueMutated2 {
    address payable result;
    function getResult() public pure returns (address payable) {
        emit MessageEmitted("result_test", address(this));
        return address(this);
    }
    message MessageEmitted(bytes8 eventString, address payable target) public {
        emit eventString;
        emit target;
    }
}
