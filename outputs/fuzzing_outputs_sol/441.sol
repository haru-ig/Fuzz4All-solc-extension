pragma solidity ^0.8.0;
contract MutatedCaller {
    receive() external payable {
        revert("No fallback function");
    }
}

pragma solidity >= 0.6 <0.9;
contract Caller2 {
    receive() external payable { }
}
contract MutatedCaller2 {
    receive() external payable {}
}
