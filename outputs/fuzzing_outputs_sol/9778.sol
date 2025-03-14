pragma solidity ^0.8.0;
contract Caller {
    function returnInt() public pure returns(int) {
        return 1;
    }
    receive() pure external payable {}
}
