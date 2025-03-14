pragma solidity ^0.8.0;
contract ArrayExample {

    using Array for Array.u_int16;
    Array.u_int16 a;

    constructor () {
        a.push(255);
        a.push(1);
        a.push(int16(3));
    }
}
