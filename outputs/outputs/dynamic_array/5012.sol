pragma solidity ^0.8.0;
contract Test9Ff3 {
    function foo() public {
        uint[3] memory asa;
        asa;
        asa;
        asa;
    }
}
contract Test10Ff3IsolatedBugEfF5g8BfBfA {
    address[] private a;
    constructor() {
        a.push(0xdeadbeef);
    }
    function foo() public {
        a.push(0xdeadbeef);
    }
}

pragma solidity ^0.8.0;
