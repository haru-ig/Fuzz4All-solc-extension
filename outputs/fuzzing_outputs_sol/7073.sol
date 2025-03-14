pragma solidity ^0.8.0;
contract WithFallback {
    address payable fallbackContract_;
    bool isFallback_ = false;
    bool isNormalContract_ = false;

    function sendEther(uint amount) public returns (bool) {
        sendValue(amount);
        return true;
    }

    function sendValue(uint amount) public {
        fallbackContract_ = payable(address(this));
        uint gas = fallbackContract_.call{value: amount}("");
    }

    function changeAddress(address payable fallback) public {
        fallbackContract_ = fallback;
    }

    function isFallback() public view returns (bool) {
        return isFallback_;
    }

    function isNormalContract() public view returns (bool) {
        return isNormalContract_;
    }
}
