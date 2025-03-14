pragma solidity ^0.8.0;
contract Mutant {
uint64 _1h = 1 hours;
uint64 _15m= 15 minutes;
uint64 _30m= 30 minutes;
uint256 x;
uint256 y_init;
address addr_1= 0x1927cE5714E2F2c1B6C6C1695583B108E39789C4;
address addr_2 = msg.sender;
address addr_6 = tx.origin;
address addr_7 = 4;
address addr_9 = 1;
address addr_23 = 2;
address addr_25 = true;
constructor () public {
    x=1;
    y_init=x*2;
    y_init=y_init+1;
    y_init=y_init.div(2)+1;
    y_init=y_init%2+1;
}
function decrease_y_init (uint256 a) public {
    y_init-=a;
}
function increase_y_init (uint256 a) public {
    y_init+=a;
}
}
