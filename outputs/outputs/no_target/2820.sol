pragma solidity ^0.8.0;
contract oldStorageOld{
    uint a[10];
    uint constant c = 3;
}

pragma solidity ^0.8.0;
contract oldStorageOld{
    constructor(){
        uint a = 4;

        uint[10] storage b = a;
        a = 5;

        uint[10] storage c = a;
        a = 6;
    }
}
contract NewStorageMut{
    uint constant a = 3;
}

modifier check(uint x) {
    if (x < 30) { revert(); }
    _;
}

struct A {
    uint x;
    function read() view returns (uint) { return x; }
}

struct B {
    function write(uint x) returns (uint);
}
contract CModifier {
    function check(uint x) view check(x + 3) {}
}
contract CModifierOld {
    function check(uint x) view check(x + 3) {}
    function check1(uint x) public view check(x + 3) {}
}
contract Folding {
    function test() public pure { uint x = 1; uint z = x + 1; }
}
contract FoldingAccess {
    function test() {
        uint x = 2; uint[7] storage y = x;
        z[3] = x + 1;
        y[4] = 3300;
    }
}
