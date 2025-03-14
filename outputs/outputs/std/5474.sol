pragma solidity ^0.8.0;
contract Mutate14 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
contract Caller {

    constructor() public {
        address payable caller = msg.sender;
        address payable owner = caller;
        assert(caller == owner);
    }

    function myFunction() public {
        selfdestruct(owner);
    }
}
contract Mutate15 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
contract Mutate16 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
