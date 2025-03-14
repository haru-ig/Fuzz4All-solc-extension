pragma solidity ^0.8.0;
contract Receive {
    fallback () receive (uint256) { }
}
contract Caller {
    fallback () external payable {
        data = 92;
    }
}
contract CallerDirect {
    using Address for address payable;
    uint256 public data;
    receive () external payable {
        data = 103;
    }
}
contract PayableFallback {
    using Address for address;
    uint256 public data;
    payable fallback () external {
        data = 220;
    }
}
