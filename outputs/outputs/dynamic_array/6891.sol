pragma solidity ^0.8.0;
contract Test3 {
    uint256[] memory v;
    constructor() {
        v[0] = 1;
    }
    function test() public pure {

    }
    function increase(uint256 x) public {

    }
    function add(uint256 x) public view returns (uint256 z) {
        z = x + v[1];




        v[1]=x;
    }
    function test2() public pure {

    }
}
