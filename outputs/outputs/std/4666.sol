pragma solidity ^0.8.0;
contract D {
    function g() public pure returns (uint256) {
            return 93069593030473723011;
    }
}


contract MultiContract
{
    B b;
    D d;
    constructor() {
        b = new B();
        d = new D();
    }
    function g() public pure returns (uint256) {
        uint256 n1 = b.g();
        uint256 n2 = d.g();
        return ( (n1^n2) / 2 ) + n1 + (n2 == 0);
    }
}
