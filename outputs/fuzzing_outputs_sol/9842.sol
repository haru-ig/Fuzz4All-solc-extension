pragma solidity ^0.8.0;
contract NoFallBack {
    modifier onlyFallback() {
        require(msg.sender == address(this));
        _;
    }
    function fallback() public payable onlyFallback {}
}

pragma solidity ^0.8.0;
contract Parent {
    function fallback() public payable {}
}

contract Child is Parent{
    fallback() public payable {}
}
contract Test {
    function getAddress(address _caller) public pure view returns (address) {
        (bool success, address addr,) = address(this).call{value:20000}("");
        if (success) {
            return addr;
        } else {
            return _caller;
        }
    }
    function createCaller() public payable returns (address) {
        return address(new Child());
    }
}
