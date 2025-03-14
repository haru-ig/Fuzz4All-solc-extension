pragma solidity ^0.8.0;
contract Test3 {
    function f(Mapping memory) public;
}
contract Mapping {
    uint[2] i;
    function g() public {
        Mapping memory m;
        m.i[0] = 8;
        m.i[0]++;
        f(m);
    }

}
