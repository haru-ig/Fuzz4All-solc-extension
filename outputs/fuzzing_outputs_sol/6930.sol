pragma solidity ^0.8.0;



contract ReentrancyGuard {
    bool private _notEntered_;

    constructor() {
        _notEntered_ = true;
    }


    modifier nonReentrant() {
        require(_notEntered_, "Reentrant call");
        _notEntered_ = false;
        _;
        _notEntered_ = true;
    }
}


contract Caller {

    function returnStringData() public view returns (string memory);
    function returnAddressData() public view returns (address);
}


contract CallerStatic {
    function staticFunc() public view {

    }
}
