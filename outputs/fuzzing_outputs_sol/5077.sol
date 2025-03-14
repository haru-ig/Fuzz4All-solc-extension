pragma solidity ^0.8.0;
contract Fallback {
    constructor() public {

        emit CallBack(x);

        emit CallBack(y);
    }
    fallback() external payable {}
    function () external payable {}
    address payable public fallbackAddress;
    function setAddress(address _newFallbackAddress) public {
        fallbackAddress = payable(_newFallbackAddress);
        emit CallBack(x);
    }
}
