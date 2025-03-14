pragma solidity ^0.8.0;
modifier modifiesAddress {
    address x;
    x = msg.sender;
    _;
}
modifier modifiesNumber {
    uint x;
    x = 3;
    x = 7;
    x = 42;
    x = 2**255;
    x = 0.6709236638156417723658558542537835391;
    uint[2] memory bar;
    bar[0] = 1;
    bar[1] = 3;
    uint[4] memory bar2;
    bar2[0] = 10;
    bar2[1] = 100;
    bar2[2] = 1000;
    bar2[3] = 10000;
    x = bar[0];
    x = bar[1];
    x = bar2[0];
    x = bar2[1];
    x = bar2[2];
    x = bar2[3];
    x += 2;
    x -= 2;
}
