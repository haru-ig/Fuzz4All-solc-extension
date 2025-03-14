pragma solidity ^0.8.0;
contract ModifiedValueWithoutFallback {
    address public valueToCaller;
    constructor(address _caller) {
        valueToCaller = _caller;
    }
    function example2() public {
        valueToCaller = msg.sender;
    }
    function example3() public {
        msg.sender = 0x90920e77889f4E7846b2D8809A925999B28B71aF;
    }
}
