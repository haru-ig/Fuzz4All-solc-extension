pragma solidity ^0.8.0;
import "./IImmutable.sol";
contract Immutable is IImmutable {
    function addressFrom() public view returns (address) {
        return address(this);
    }
}

import "./Immutable.sol";
contract Immutable2 is Immutable {}

import "./Immutable.sol";
contract Immutable3 is Immutable, IImmutable {}

import "./Immutable.sol";
contract Immutable4 is Immutable, IImmutable2 {}

interface IImmutable2 {
    function addressFrom() public view returns (address);
}

pragma solidity ^0.8.0;
import "./IImmutable2.sol";
contract ImmutableWith2 is ImmutableWith3, IImmutable2 {

    constructor() Immutable2() public { }
    function addressFrom() public view returns (address) {
        return address(this);
    }
}

pragma solidity ^0.8.0;
contract Child {
    function c() public view returns (address) {
        return address(this);
    }
}
contract Parent is Child {}
contract ChildWithParent is Parent {}
contract ChildWithParent2 is Child, Parent {}
contract ParentWithChild2 {
    function p() public returns (address) {
        return address(this);
    }
}
