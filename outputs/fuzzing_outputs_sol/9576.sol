pragma solidity ^0.8.0;
contract FallbackWithErrors {
    function noCaller() public {
        address(this).balance;
    }
    function noCallerFallback() public payable {
        assert(msg.value >= 0.0000001 ether);
    }
    function nonpayableReceiverNotUsed() public payable {
        address(this).balance;
    }
    function receiveEther(uint) public receive {
        address(this).balance;
    }
    function receiveEtherAndNotUsed(address to) public payable receive {
        address(this).balance;
    }
    function receiveZeroValueZeroValue() public {
        address(this).balance;
    }
    function receiveAddress(uint amount) public {
        address(this).balance;
    }
}

pragma solidity ^0.8.0;
contract FallbackWithErrorsMutatedCaller {
    function mutated() public payable {
        emit Mutated();
        address(this).balance;
    }
    event Mutated();
}

pragma solidity ^0.8.0;
contract FallbackWithErrorsMutatedCallerInContract {
    function mutated() public payable {
        emit Mutated();
        address(this).balance;
    }
    event Mutated();
}
pragma solidity ^0.8.0;

contract CallerFallbackWithNoReceive {
    constructor() {}
    fallback() external payable {}
}
