pragma solidity ^0.8.0;
contract A{
    event e();
    modifier m() { emit e(); _ }
    function f() {
        uint a1;
        if ((a1 == 1)  )
            m();
    }
}
