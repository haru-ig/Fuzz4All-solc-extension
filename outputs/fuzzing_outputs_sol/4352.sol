pragma solidity ^0.8.0;
contract CallerFallback {
    function CallerFallback00() internal {
        require(address(this).call{value: 12}("") == address(this));
    }
    function CallerFallback01() public payable {
        require(address(this).call{value: 10}("") == address(this));
    }
    function CallerFallback02() public pure {
        require(address(this).call{value: 20}("") == address(this));
    }
}
