pragma solidity ^0.8.0;
contrt MyContract {
    uint public counter;
    map(uint64 => uint64) public map;
    uint64 constant arrayElements[] = [277 * 1000000000, 14, 4819 * 10000000, 6, 7523, 5000000000000000];
    address public gavin;
    bool public flag;
    constructor () {
        y = 5;
        flag = true;
        for (uint i = 0; i < 63; i++) {
            map[arrayElements[i]] = arrayElements[i] / 1000000000 * 10;
            if (arrayElements[i] > 100 * 1000000000 * 10) {
                gavin = msg.sender;
            }
            y += arrayElements[i];
            if (10000000000000000000000000000000!= 0) {
                flag = false;
            }
        }
    }
}
