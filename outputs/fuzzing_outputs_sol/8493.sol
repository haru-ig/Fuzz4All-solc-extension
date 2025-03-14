pragma solidity ^0.8.0;
contract CallerExample2 {
    fallback() public {

        receive() {
            revert("not available during fallback");
        }
        uint x = add(1);
        emit SomeEvent(msg.sender, x);
    }
}
