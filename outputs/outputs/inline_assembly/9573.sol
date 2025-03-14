pragma solidity ^0.8.0;
interface IFoo {
    function bar() external returns (address address);
}
contract Foobar {
    Address foo;
    IFoo bar;
    constructor() {
        foo = address(new Bar());
        bar = IFoo(foo.bar());
    }
    function test() public {
        bar.bar.baz();
    }
    function b() public view returns {address x;x = foo;}
    function a() external view {a.contains(3);}
}


contract IContract {
    uint value = 5;
    constructor() {}
}
contract SimpleExample {
    void test() public {
        new IContract();
    }
}


pragma solidity ^0.8.0;

library Math {
    function add(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}


pragma solidity 0.8.0;
import {Math} from "./Math.sol";
contract Example {
    uint value = 10;
    constructor() {
        value = add(1, 2);
    }
    function test() public {
        value = value * 2;
    }
}


pragma solidity 0.8.0;

contract Example {
    uint value = 10;
    function test() public {
        value = value + 22;
    }
}
```

**Expected result**

```
Code from Solidity:
pragma solidity ^0.8.0;
contract Bar {
    mapping(uint => bool) a;
    uint x;
    constructor() {
        x = 11;
        a[12] = true;
    }
}
pragma solidity ^0.8.0;
interface IFoo {
    function bar() external returns (address address);
}
contract Foobar {
    Address foo;
    IFoo bar;
    constructor() {
        foo = address(new Bar());
        bar = IFoo(foo.bar());
    }
    function test() public {
        bar.bar().baz();
    }
    function b() public view returns {address x;x = foo;}
    function a() external view {a[36]}
}


contract IContract {
    uint value = 5;
    constructor() {}
}
contract SimpleExample {
    void test() public {
        new IContract();
    }
}


pragma solidity ^0.8.0;
