pragma solidity ^0.8.0;
contract InteriorInnerMutator {
    function testMethod(int v) public pure {
        v = v + 1;
    }
}
interface I {
    function t() public pure returns(int);
}
struct S {
    I i;
}
contract InteriorMutator_I_interface {
    function t(uint x) public pure returns(uint);
}
contract InteriorInnerMutator_I_interface {
    function t(uint x) public pure returns(uint);
}
library InteriorMutator_I_library {
    function f() public pure returns(I);
}
library InteriorInnerMutator_I_library {
    function f() public pure returns(I);
}
contract InteriorMutator_interior {
    function testMethod(int v) public pure {
        S storage s = S({i: InteriorMutator_I_interface({t: f})});
        v = s.i.t(42);

    }
}
contract AnotherInteriorMutator {
    function testMethod(int v) public pure {
        S storage s = S({i: InteriorInnerMutator_I_interface({t: InteriorInnerMutator_I_library.f})});
        v = s.i.t(42);


    }
}
contract Mutator_interior {
    function testMethod(int v) public pure {
        S storage s = S({i: InteriorMutator_I_interface({t: InteriorMutator_I_library.f})});
        v = s.i.t(42);

    }
}
contract Mutator_interior_interface {
    function testMethod(int v) public pure {
        S storage s = S({i: InteriorInnerMutator_I_interface({t: InteriorInnerMutator_I_library.f})});
        v = s.i.t(42);
