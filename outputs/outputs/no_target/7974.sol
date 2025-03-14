pragma solidity ^0.8.0;
contract Mutator8 {
    uint[] public z = new uint[](1);
    uint[] public x = new uint[](1);
    uint[] public y = new uint[](1);
    constructor () public {
        x[0] = 0x234;
        x.push(0);
        y[0] = 1;
        y.push(0);
        z.push(0);
        z.push(0);
    }
    function set() external {
        for (uint i=0; i<2; i++) {
            z[i] = 1;
        }
        for (uint i=0; i<2; i++) {
            v.push(0);
        }
        for (uint i=0; i<2; i++) {
            v.push(0);
        }
        for (uint i=0; i<2; i++) {
            v.push(0);
        }
        v[0] = 0;
    }
}
*/
