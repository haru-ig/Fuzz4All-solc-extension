pragma solidity ^0.8.0;
contract G {
    address[] a;
    string[]  b;
    constructor() public {
    }
    function fz(uint i)  public returns (uint[] memory) {
        return(a);
    }
    function add(uint x, uint y) public returns (uint) {
        a.push(add(x, y));
        return(add(x, y));
    }
    function add2() public view returns (uint) {
        return(a.length + b.length);
    }
    function add3() public view returns (uint) {
        return(g());
    }
    function g() public view returns (uint) {
        return(add(add(g(), b.length), add(1, 2)));
    }
}
