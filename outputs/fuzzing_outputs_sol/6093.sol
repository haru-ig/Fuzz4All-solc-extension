pragma solidity ^0.8.0;
contract CallerV1 {
    function call() public payable {}
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract CallerV2 {
    address payable owner;
    constructor() {
        owner = payable(msg.sender);
    }
    function call() public payable {
        callWithoutOwner();
        owner.transfer(address(this).balance);
    }
    receive() external payable {}
    function privateCallWithoutOwner() private payable {}
}
