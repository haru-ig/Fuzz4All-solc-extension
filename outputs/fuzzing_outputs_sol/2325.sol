pragma solidity ^0.8.0;
contract PayableFallback {
    function receive() public view  payable {}
}

pragma solidity ^0.8.0;
contract PayableFallback {
    function receive() public payable {}

  fallback() public payable {}
}
