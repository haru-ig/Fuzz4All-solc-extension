pragma solidity ^0.8.0;
contract Mutated1 {
    uint immutable public count;
    uint[] public a;
    uint[] internal b;
    constructor() {
        update();
    }
    function update() public {
        b.push(1024);
        b.push(1025);
        a.push(1);
        a.push(1024);
    }
    function show() public view returns(uint, uint[]) {
        if(count == 2) {
            return (a[0], b);
        } else {
            return (a[0], b);
        }
    }
}
