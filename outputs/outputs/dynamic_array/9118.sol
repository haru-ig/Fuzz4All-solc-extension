pragma solidity ^0.8.0;
contract Base {
    uint256 private i = 0;
    constructor()   {

    }
    function foo() external {
        uint256 i1 = i;
        i1 = 1;
    }
}
pragma solidity ^0.8.0;
contract Derived is Base {
    uint256 private i = 0;
    modifier goo()   {
        i = 2;
        _;
        i = 0;
    }
    function foo() public {
        uint256 i2 = i;

        derived();

        goo();
        derived();
        i2 = 1;
        derived();
    }
    function derived() public {
        i = 1;

        i = 2;

        i = 3;
        i = 0;

    }
}
pragma solidity ^0.8.0;
contract Derived_Modified is Derived {
    bool gooCalled = false;
    function derived() public {
        gooCalled = true;


        gooCalled = true;
        goo();


        gooCalled = false;

    }
    function foo() public {
        derived();

        i = 1;

    }
}


struct Foo {
    uint i;
}
contract Derived2 {
    function derived() public{
        i = 0;
        i = 1;
        i = 2;
        Foo memory obj;
        obj.i = 0;
        i = 3;
        i = 4;
        obj.i = 0;
    }
    function foo() public {
        derived();

        derived();

    }
    uint i;
}


contract Derived3 {
    constructor() {
        _i = 7;
    }
