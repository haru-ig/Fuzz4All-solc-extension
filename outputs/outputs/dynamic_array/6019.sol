pragma solidity ^0.8.0;
contract Test30016 {
    constructor () public {}
    uint[] public data;
    constructor (uint x) public { data.push(x); }
   function foo() public { delete data[0]; }
}

pragma solidity ^0.8.0;
contract Test30016 {
    constructor () public {}
    uint[] constant data;
    function foo(uint x) public { delete data[0]; }
}
