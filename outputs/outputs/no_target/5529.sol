pragma solidity ^0.8.0;
contract O {
    (uint, uint) public xy;
    function f() public returns (uint, uint) {
        (, uint x) = (1, 1);
        return (x, (x>1));
    }
}
contract O is C {
    function f() public returns (uint) {
        (uint, uint x) = (1, 1);
        return (x, (x>1));
    }
}


pragma solidity ^0.8.0;
contract O is A, B {
    function f() public returns (uint) {
        (uint, uint x) = (1, 1);
        return (x, (x>1));
    }
}
