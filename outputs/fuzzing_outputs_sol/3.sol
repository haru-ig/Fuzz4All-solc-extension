pragma solidity ^0.8.0;


contract Caller {
    function call() public payable {}
}



contract CallerFallback is Caller {
    function call() public payable {
        self.fallback();
    }
}
