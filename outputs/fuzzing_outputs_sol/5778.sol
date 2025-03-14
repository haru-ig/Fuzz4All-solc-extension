pragma solidity ^0.8.0;
contract semanticallyEquivalent
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_less_than_100() {
        require(z <= 100);
        _;
    }
    constructor(){
          z__ = 100;
    }
    function test() public payable z_less_than_100 {
        while (z__ < 10) {
            z++;
         }
        y = 5;
    }
}

contract Fallback {
     function() external payable {}
}

contract Caller
{
    address public caller;
    fallback public fallbackMethod;
    constructor() public {
        caller = msg.sender;
        fallbackMethod = new fallback();
    }
    function callTransfer() public returns (uint) {
        msg.sender.transfer(uint(fallbackMethod()));
    }
    function callTransferValue() public returns (uint) {
        msg.sender.transfer(uint(fallbackMethod()) + 1);
    }
    function callTransferWithoutFallbackMethod() public returns (uint) {
        msg.sender.transfer(fallbackMethod());
    }
}

contract Reentrancy {
    uint private nonReentrant = 0;

    constructor () { }

    modifier nonReentrantIsZero() {
        rguard();
        _;
    }
    function rguard() private {
        nonReentrant = nonReentrant + 1;
        require(nonReentrant == 0);
    }
}

contract ReentrancyCaller
{
    address public caller;

    modifier nonReentrant() {
        rguard(); _;
    }
    function rguard() private {
        nonReentrant = nonReentrant + 1;
        require(nonReentrant == 0);
    }
    constructor () public {
        caller = msg.sender;
    }
    function callWithFallback() public nonReentrant {
        msg.sender.transfer(fallbackMethod());
    }
    function callWithFallbackAndWithoutFallback() public nonReentrant {
        msg.sender.transfer(fallbackMethod() + 1);
    }
}
