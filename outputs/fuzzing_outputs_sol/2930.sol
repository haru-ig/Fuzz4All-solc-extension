pragma solidity ^0.8.0;
contract Caller {
    function pay_fallback() external payable {}
    function get_fallback_data() public view returns (uint256) {
        return 0;
    }
    fallback() payable external {
        emit CallerFallback();
    }
    event CallerFallback();
}
