pragma solidity ^0.8.0;
contract Fallback {
    uint256 public data;

    function pay_fallback(address target_, uint256 value_) external {
        data = target_.call.value(value_)();
    }

    function get_fallback_data() public view returns (uint256) {
        return data;
    }

    event FallbackData(uint256 data_);

    fallback() external {
        emit FallbackData(data_);
    }
}
