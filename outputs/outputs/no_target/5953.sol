pragma solidity ^0.8.0;
contract C {
    function g() public pure {
        if (true) {
            if (true)
                a;
            else
                a;
            a();
        } else {
            if (true)
                a;
            else
                a;
            a();
        }
    }
}
