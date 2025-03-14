pragma solidity ^0.8.0;
contract Admin {
    Proxy constant admin_proxy = Proxy(0x44031A2B2b046384991fAFd57B9351F838D268aA);
    Proxy immutable nonAdmin_proxy;

    constructor(address _nonAdminProxy) {
        admin_proxy = Proxy(admin_proxy);
        nonAdmin_proxy = Proxy(_nonAdminProxy);
    }

    function setProxy(address _nonAdminProxy) public {
        admin_proxy = Proxy(admin_proxy);
        nonAdmin_proxy = Proxy(_nonAdminProxy);
    }
}


contract ReentrancyGuard {





    uint256 private _guardCounter;

    constructor () {

        _guardCounter = 1;
    }


    modifier nonReentrant() {
        _guardCounter += 1;
        uint256 localCounter = _guardCounter;
        _;
        require(localCounter == _guardCounter, "ReentrancyGuard: reentrant call");
    }
}
