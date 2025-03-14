pragma solidity ^0.8.0;
contract SomeContract {
    uint public x = 7;


    modifier hasPayableFallback() {
        require(
            msg.sender == SomeOtherContract.address,
            "Caller has to be SomeOtherContract"
        );
        _;
    }
    function f() public payable hasPayableFallback {
        x += 5;
    }
    function h() public {
        if (hasPayableFallback()) {
            x += 5;
        } else {
            x -= 5;
        }
        x += 5;
    }
}
