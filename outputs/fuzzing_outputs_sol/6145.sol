pragma solidity ^0.8.0;
contract MyEtherMutator {
    address admin;
    MyEther myEther = new MyEther();
    constructor() {
        admin = msg.sender;
    }
    function test() public {
        myEther.test();
    }
}

pragma solidity ^0.8.0;
contract Caller {
    address admin;
    MyEther myEther = new MyEther();
    constructor() {
        admin = msg.sender;
    }
    function test() public {
        require(block.timestamp > block.number, "Time not too far in the future");
        myEther.test();
    }
}
