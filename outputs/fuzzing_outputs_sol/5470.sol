pragma solidity ^0.8.0;
contract modifiedconstructorcall82
{
    modifier internalOnly() {
        require(!isConstructorCall());
        _;
    }
    constructor() public internalOnly {}
    receive() payable external {}
    function isConstructorCall() internal view returns (bool) {
        assembly { mstore(0x40, mload(0x40)) }
        return address(0x40) == msg.sender;
    }
}
contract mutatedfunctioncall82
{
    modifier internalOnly() {
        require(!isCalled());
        _;
    }
    function test() public internalOnly returns (bool) { return true; }
    function isCalled() internal view returns (bool) {
        return msg.value == 0;
    }
}
contract calledasreceive82
{
    receive() payable external {}
    function () public payable {}
}
contract calledassend82
{
    fallback() payable external {}
    receive() external payable {}
}
contract invalidfallback82
{
    function () public external {}
    function invalidReceivingCall() payable external {}
}
contract invalidfallbackinterface82
{
    fallback() public payable {}
}
contract successmutablefallback47
{
    receive() payable external {}
}
contract mutatedconstructorcall47
{
    constructor(uint) public {}
    receive()Payable external {}
}
contract constructedconstructorcall47
{
    constructor(uint) public {}
}
contract mutatedconstructorcall47notconstructorcall
{
    constructor(uint) public {}
    receive() external {}
}
contract mutatedconstructorcallnotconstructor
{
    constructor(uint) public {}
    receive() payable {}
}
contract mutatedconstructorcallnotconstructed
{
    constructor(uint) public {}
    receive() payable external {}
}
contract mutatedconstructorcallnotconstructorpayable
{
    constructor(uint) public {}
    receive() payable external {}
    fallback() payable external {}
}
contract mutatedconstructorcallconstructor
{
    constructor() public {}
}
contract mutatedconstructorcallconstructornotconstructorcall
{
    constructor(uint) public {}
    receive() payable {}
}
contract mutatedconstructorcallconstructornotconstructed
{
    constructor(uint) public {}
    receive() payable external {}
}
contract mutatedconstructorcallconstructornotconstructorpayable
{
    constructor(uint) public {}
    receive() payable external {}
    fallback() payable external {}
}
