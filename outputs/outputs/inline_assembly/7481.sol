pragma solidity ^0.8.0;
 */

contract Test
{
uint public count = 0;

contract M {
    function f() pure public {
    }
}

 modifier only() {
 count++;
    if (count > 0) {
        M x = new M();
        x.f();
        M y = new M();
        y.f();
    }
}


contract ContractTest  is M {
    constructor () { }
    function () external {
    }
}
