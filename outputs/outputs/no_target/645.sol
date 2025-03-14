pragma solidity ^0.8.0;
interface IProvider {
    function getProviderData() external view returns (address);
}
pragma solidity ^0.8.0;
contract ProxyStorage {
    constructor(address _implementation) public {
        implementation = _implementation;
    }

    address public implementation;
}
pragma solidity ^0.8.0;
contract Proxy is ProxyStorage {
    constructor() public {
        implementation = msg.sender;
    }

    receive() external payable {}
}
pragma solidity ^0.8.0;
contract Baz {
    constructor(address _proxy) public {
        proxy = IWrapper(_proxy).getWrapperData();
    }

    IWrapper private proxy;

    function foo() public view {
        address foo = implementation;
    }
}
pragma solidity ^0.8.0;
contract Foo {
    function bar() public view {
        b = Baz(proxy);

        address foo = b.foo();
    }
}
pragma solidity ^0.8.0;
