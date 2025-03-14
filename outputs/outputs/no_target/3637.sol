pragma solidity ^0.8.0;
contract C {
    modifier m(uint n) {require(n == 1 || n == 2, 'not one or two!'); _; }
    function f(uint) m(4) public {
    }
    function g() public {

        f(3);

        f(4);

        f(3);
    }
}


contract C2 is C {
    function g() public {

        assert(1 == 1);

        assert(3 == 3);

        assert(3 == 4);
    }
}
contract test616717197804999317516439238136879663711839760628629431157845825828578776 {
}
