pragma solidity ^0.8.0;
contract MixedContactsExample99 {
    uint56 a;
    uint56 b;
    function doSomething() public {
        address accountCaller = msg.sender;
        uint56 a1 = a;
        while(true) {
            emit A();
            uint256 amount = a1 * accountCaller;
            if (amount <= 19900 ){
                break;
            }
        }
        b += a;
        a += b;
        b += a;
    }

    event A();
}
