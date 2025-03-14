pragma solidity ^0.8.0;
contract Example1 {
    receive() external payable {
        revert("Fallback function should receive only Ether transfers.");
    }
}
contract Example2 {
    receive() external payable {
        revert("Fallback function should take Ether only");
    }
}
contract Example3 {
    receive() external payable {
        revert("Fallback function should only receive Ether");
    }

    function fallback() public returns (uint256) {
        uint256 val = msg.value;
        if (val >= 10* 10**18) {
            return 325 + 10;
        }else {
            revert("Invalid data passed");
        }
    }
}
contract Example {
    uint256 public data;

    function fallback() public returns (uint256) {

        return data;
    }
}
contract Example4 {
    event LogEvent(address payable user, uint256 data);

    receive() external payable {
        LogEvent(msg.sender, msg.value);
        revert("Fallback function should receive only Ether transfers.");
    }

    function fallback() public returns (uint256){

        emit LogEvent(msg.sender, msg.value);
        return data;
    }
}
contract Example5 {
    receive() external payable {
        revert(bytes32(keccak256("fallback failure")));
    }

    function fallback() public returns (uint256) {
        revert("Fallback should revert");
    }
}
