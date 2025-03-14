pragma solidity ^0.8.0;
contract MutatedFallback1 {
    function test1() public returns (uint256) {
        uint256 _result = 3;
        return _result;
    }
}
contract MutatedFallbackCaller0 {
    constructor() {

        assembly {

            selfcall(add(this, 0x10))
        }
    }
    fallback() external payable {

        revert();
    }
}
contract MutatedFallbackCaller1 {
    constructor() {

        require(msg.value >= 500 ether, "Message too low");
    }
    fallback() external payable returns (uint) {

        revert();
        return 6;
    }
}
