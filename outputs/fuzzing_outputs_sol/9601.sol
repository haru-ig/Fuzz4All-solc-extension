pragma solidity ^0.8.0;

contract Caller {
    modifier onlyCaller() {
        require(msg.sender == address(new EtherFallback0), 'Caller contract is not the fallback function');
        _;
    }
    function test() public onlyCaller returns (uint256) {
        return 2;
    }
}
