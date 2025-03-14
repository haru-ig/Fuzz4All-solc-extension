pragma solidity ^0.8.0;
contract CallerFallbackTest {
    address payable public test;
    uint test2;
    uint test3;
    constructor() {
        test = payable(address(this));
    }
    receive() external payable {
        test = payable(address(this));
    }
    receive() external payable {
        selfdestruct((payable(address(this))).add(20));
    }
    receive() external payable {
        selfdestruct((payable(address(this))).add(40));
        test = payable(address(this));
    }
    receive() external payable {
        selfdestruct((address(this)).add(20));
    }
    fallback() external payable {
        test2 = (payable(address(this))).add(1000);
        test3 = (payable(address(this))).add(3000);
    }
    fallback() external payable {
        uint test4 = (payable(address(this))).add(4000);
    }
}
