pragma solidity ^0.8.0;
contract Modifer {
    function modifer() public {
        Caller x;
        Caller y = msg.sender;
        Caller z = Caller(0x1234);

        Caller x2 = y;
        Caller y2 = x;
        Caller z2 = Caller(address(0x1234));
    }
}
