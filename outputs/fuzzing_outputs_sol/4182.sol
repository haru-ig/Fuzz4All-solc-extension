pragma solidity ^0.8.0;
contract CallersContractNoFallback{
    function call() public {
        NoFallbackCaller.call();
    }

    constructor() payable{}
}


pragma solidity ^0.8.0;
contract CallersContractWithReceive{
    address payable receiver;
    function call() public payable {
        receiver.transfer(1 ether);
    }

    function fallback() payable {}
}
