pragma solidity ^0.8.0;
interface I {
    function set(uint x) external;
    function add(uint x, uint y) public returns (uint);
    function set2(uint x) external;
    function get() public view returns (uint);
    function call(uint x) payable external returns (uint);
}

pragma solidity ^0.8.0;
contract C {
    uint x;

    function c(uint i, uint j, uint k) public {
        x = i + j + k;
    }

    function set(uint w) public {
        c(1, 2, 3);
        TesterInterface test = I(0);
        test.set(w);
        x = w;
    }

    function call() public {
        TesterInterface test = I(0);
        test.call();
    }
}

pragma solidity ^0.8.0;
interface I0 {
    function set2(uint x) external;
    function call2(uint x) payable external returns (uint);
}

pragma solidity 0.8.10;
interface I1 {
    function set(uint x) external;
    function get() public view returns (uint);
}

pragma solidity 0.8.10;
interface I2B {
    function set(uint x) external;
}
interface I2A {
    function f(uint) external view returns (uint);
}
