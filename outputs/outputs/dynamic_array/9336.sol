pragma solidity ^0.8.0;
contract Arrays {
    uint[] internal a;
    uint[] internal c;

    constructor() {
        a.push(0);
        a.push(1);
        c.push(2);
        c.push(3);
        a.push(4);
        a.push(5);
        c.push(6);
        c.push(7);
        for (uint i = 0; i < 8; i++) {
            for (uint j = 1; j <= i; j++) {
                a[j-1] += a[j];
            }
        }
        a.push(10);
        c.push(11);
        for (uint i = 2; i < 8; i += 2) {
            a[i-1] += c[i-1];
        }
        for (uint i = 2; i < 8; i += 2) {
            for (uint j = i+1; j < 8; j += 2 ) {
                a[i-1] += c[j-1];
            }
        }
        a.push(20);
        c.push(21);
        for (uint i = 4; i < 8; i += 2) {
            for (uint j = i+2; j < 8; j += 2) {
                a[j-1] += a[j];
            }
        }
    }
}
