pragma solidity ^0.8.0;
contract semanticallyequivalent_semut1_equivalent
{

    function f() public pure {
        emit Emitted();
    }
    function Emitted() public pure {
    }
}
contract semanticallyequivalent_semut2_equivalent
{

    function f(uint r) public pure {
        emit Emitted(r);
    }
    function Emitted(uint r) public pure {
    }
}
contract semanticallyequivalent_semut3_equivalent
{

    function f(bytes memory a) public pure {
        emit Emitted(a);
    }
    function Emitted(bytes memory a) public pure {
    }
}
contract semanticallyequivalent_semut4_equivalent
{

    function f() public pure {
        emit Emitted1();
    }
    function Emitted1() public pure {
    }
}
contract semanticallyequivalent_semut5_equivalent
{
    function f(uint r) public pure {
        emit Emitted2(r);
    }
    function Emitted2(uint r) public pure {
    }
}
contract semanticallyequivalent_semut6_equivalent
{

    function f(bytes memory) public pure {
        emit Emitted3(1);
    }
    function Emitted3(bytes memory) public pure {
    }
}
contract semanticallyequivalent_semut7_equivalent
{

    function f() public pure {
        emit Emitted4();
    }
    function Emitted4() public pure {
    }
}

pragma solidity ^0.8.0;
interface semanticallyequivalent_semut1interface
{

    function f() public pure;
    function x() public pure;
}
interface semanticallyequivalent_semut2interface
{

    function f(uint) public pure;
    function x(bytes memory) public pure;
}
