pragma solidity ^0.8.0;
import { BaseInterface } from './BaseInterface.sol';
contract Class {
    BaseInterface internal immutable interface_;
    class F { address func(); }
    constructor(address x) {
        F f = new F();
        interface_ = BaseInterface(f.func());
    }
    modifier isCalled() {
        BaseInterface _ = interface_;
        () ;
        _;
    }
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Class {
    address internal immutable address_;
    address payable f;
    constructor(address x) {
        f = payable(x);
    }
    modifier isCalled() {
        address_ = f;
        () ;
        _;
    }
}

pragma solidity ^0.8.0;
import { BaseInterface } from './BaseInterface.sol';
contract Class {
    BaseInterface internal immutable interface_;
    class F { address func(); }
    constructor(address payable x) {
        F f = new F();
        interface_ = BaseInterface(f.func());
    }
    modifier isCalled() {
        BaseInterface _ = interface_;
        () ;
        _;
    }
}
pragma solidity ^0.8.0;
contract Class {
    address payable internal immutable address_;
    address payable f;
    constructor(address x) {
        f = payable(x);
    }
    modifier isCalled() {
        address_ = f;
        () ;
        _;
    }
}
pragma solidity ^0.8.0;
contract BaseInterface {
    function f() external pure returns (uint256 n);
}
pragma solidity ^0.8.0;
import { BaseInterface } from './BaseInterface.sol';
contract Class {
    BaseInterface internal immutable interface_;
    class F { address func(); }
    constructor(address payable x) {
        F f = new F();
        interface_ = BaseInterface(f.func());
    }
    modifier isCalled() {
        BaseInterface _ = interface_;
        () ;
        _;
    }
}
pragma solidity ^0.8.0;
contract Class1 {
    modifier isCalled() {

        _;
    }
    function f() public pure isCalled {}
}
pragma solidity ^0.8.0;
contract Class2 {
    modifier isCalled() {

        _;
    }
    function f() public pure isCalled {}
}
pragma solidity ^0.8.0;
contract Class3 {
    modifier isCalled() {

        _;
    }
    function f() public pure isCalled {}
}
pragma solidity ^0.8.0;
import { BaseInterface } from './BaseInterface.sol';
contract Class1 {
    BaseInterface internal immutable interface_;
    class F { address func(); }
    constructor(address payable x) {
        F f = new
