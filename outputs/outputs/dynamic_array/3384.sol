pragma solidity ^0.8.0;
interface I3b {
    enum E {E31, E32}
    function f() external view;
    function set(E e) external;
    function test() public;
}
pragma solidity ^0.8.0;
interface I3c {
    event e(uint);
    function f() external view;
    function set(uint) external;
}
pragma solidity ^0.8.0;
interface I3d {
    function f() external;
    function a(I3a) external;
    function b(I3b) external;
}
pragma solidity ^0.8.0;
interface I3e {
    function f() external view;
    function set(uint) external;
}
pragma solidity ^0.8.0;
interface I3f {
    function f() external view returns (uint);
}
pragma solidity ^0.8.0;
contract C3a is I3a, I3d {
    uint a;
    function f() external override returns (uint) { return a; }

    function a(I3a a_a) public override returns (uint) {
        a = 2;
        emit e(a);
        return a;
    }






    modifier m1() { a = a; _; a = 3; }






    modifier m2() { a = a; _; a = 4; }

    function set(E e) public override m1 {
        a = e;
        emit e(a);
    }

    function test() public {
        emit e(a);
    }
}
pragma solidity ^0.8.0;
contract C3b is I3b,
