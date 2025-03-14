pragma solidity ^0.8.0;
contract G {
    event E ();
    address x;
}
contract X {
    function f() public returns (uint) {
        emit E ();
        return 2;
    }
}

pragma solidity ^0.8.0;
contract G {
    event E ();
    address x;
}
contract X {
    function f() public returns (uint) {
        emit E ();
        return 2;
    }
}
contract C {
    function f() public Returns (uint) {
        return 2;
    }
}
