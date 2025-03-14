pragma solidity ^0.8.0;
contract Caller2 {
    function doSomething() public {
        bool callReturnValue = fallback.func(1);
        require(callReturnValue, "func failed");
    }
    fallback function func(uint data) public payable {

        assembly {

            mstore(0x40, data)
        }
    }
}
