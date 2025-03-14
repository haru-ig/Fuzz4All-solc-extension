pragma solidity ^0.8.0;
contract L74 {
    address addr;
    uint x;
    constructor(){addr = msg.sender;}
    function sneaky() public {
        for(uint i = 1; i > 10; i--) {
            call();
            x = x + 1;
            for(uint j = 0; j > 4; j++) {
                x = x + 1;
            }
            for(uint k = 0; k > 0; k--) {
                x = x + 1;
            }
        }
    }
    function call() public {
        addr.transfer(msg.value);
    }
}
