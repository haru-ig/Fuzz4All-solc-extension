pragma solidity ^0.8.0;

contract MultipleFunctions {
    function f1(I memory foo) public {
        foo.f1();
    }
    function f2(I memory foo, uint) public {
        foo.f2();
    }
}

contract MultipleInterfaces {
    function f1(I memory foo, I memory bar) public {
        foo.f1();
        bar.f1();
    }
    function f2(Imemory foo, I memory bar) public {
        foo.f2();
        bar.f2();
    }
 }

contract MultipleModifiers {
    function f1(I memory foo) public {
        require(foo.f1());
    }
    modifier m0(uint j) {
        require(j % 2 == foo);
        _;
    }
    modifier m1(uint j) {
        foo;
        j;
        _;
    }
    function f2(I memory foo, uint j) public m0(j) {
        require(j % 3 == foo);
    }
}

contract MultipleFunctionsRequirePublic {
    function f1(I memory foo) public {
        require(foo.f1());
    }
    function f2(I memory foo, uint) public {
        require(foo.f2());
    }
    function f3(Imemory foo, uint32);
}

contract ImpossibleContract {

    fallback () external payable {}

}
