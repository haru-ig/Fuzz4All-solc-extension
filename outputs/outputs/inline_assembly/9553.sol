pragma solidity ^0.8.0;
interface MyInterface {
    function bar() external;
}
contract MyContract {
    bytes32 public myLib = "libbytes32.sol:TestLib.fun";
    modifier AlwaysTrue {
        _;
    }
    modifier Foo {
        return (msg.sender == address(this));
    }
    function bar() public True {
        bytes memory data;
        MyInterface foo;
        assembly{
            myLib ==.call(msg.data,1)
            foo.bar() ==.call(foo,2)
        }
        data;
    }
    constructor() {
        b3 = b3;
    }
}

pragma solidity ^0.8.0;

contract MyContract {
    address public fooAddress;
    modifier AlwaysTrue {
        _;
    }
    modifier IsOurself {
        _;
    }
    modifier Foo {
        return (msg.sender == address(this));
    }
    function bar() public AlwaysTrue {
        bytes memory data;
        address f;

        assembly{

            self >=>.switch_to(f)
            fooAddress >=>.switch_to(f)
        }

        if (f == myLibAddress)
            return;

        data ;
    }
    constructor (address f) public {
        fooAddress = f;
    }
    address public myLibAddress;

    constructor(address _myLibAddress) public {
        myLibAddress = _myLibAddress;
    }
}
contract TestLib {
    function fun(uint) public pure returns (uint) {
        return 0xff;
    }
}
