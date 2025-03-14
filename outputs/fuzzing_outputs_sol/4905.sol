pragma solidity ^0.8.0;
contract NoFallback {
    constructor() {}
    fallback() external payable {}
    receive() external payable {
    }
}
pragma solidity ^0.8.0;
contract FallbackContract {
    function fallback() public payable {
        uint _dummy = 5;
    }
}
