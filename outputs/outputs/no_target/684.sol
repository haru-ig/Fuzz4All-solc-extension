pragma solidity ^0.8.0;
contract Gen0Example {
    function Gen0Example_init() public {
        Gen0Example_foo();
    }
}


pragma solidity ^0.8.0;
contract GenXExample {
    function GenXExample_foobar() public {
        GenXGeneric foo = GenXExample_Foo();
        foo.doSomething();
    }
    function GenXExample_Foo() internal pure returns (Gen0Example){
        return Gen0Example();
    }
}
