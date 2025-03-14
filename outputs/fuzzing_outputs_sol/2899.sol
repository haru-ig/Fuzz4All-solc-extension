pragma solidity ^0.8.0;
contract Bar {
    receive () external payable {
    }
    fallback () external payable {
        return ;
    }
}
pragma solidity ^0.8.0;
receive () external payable {
    revert();
}
pragma solidity ^0.8.0;
contract Caller{
    Foo foo ;
    function foo() public {
        foo.foo();
    }
}
pragma solidity ^0.8.0;
contract Bare1 is Foo, Bar{
}
pragma solidity ^0.8.0;
contract Bare2 is Foo{
}
pragma solidity ^0.8.0;
contract Bare3 is Bar{
}
pragma solidity ^0.8.0;
contract Bare4 is Bar, Foo{}, Bare3 {
    receive() external payable {
        return ;
    }
}
pragma solidity ^0.8.0;
contract Bare5 is Foo, Bare4 {
}
pragma solidity ^0.8.0;
contract Bare6 is Foo, Bare4, Foo {}
pragma solidity ^0.8.0;
contract Bare7 is Foo, Bare1, Bare1 {}
pragma solidity ^0.8.0;
contract Bare8 is Foo, Bare1, Bare3 {}
pragma solidity ^0.8.0;
contract Bare9 is Foo, Foo, Bare1 {}
pragma solidity ^0.8.0;
contract Bare10 is Foo, Bare1, Foo {}
contract Bare11 is Foo, Bare1, Foo, Bare1, Bar {}
contract Bare12 is Bare1, Bare3, Bare3 {}
