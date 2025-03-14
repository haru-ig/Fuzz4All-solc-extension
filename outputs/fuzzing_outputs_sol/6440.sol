pragma solidity ^0.8.0;
contract C {
    uint x;
    modifier test() {
        x++;
        _;
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract C {
    uint x;
    function test() public view test {}
    receive() external payable {}
}
