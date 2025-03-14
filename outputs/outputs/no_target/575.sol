pragma solidity ^0.8.0;
contract Test {
    ChildInterface public child;
    constructor(ChildInterface child_) {
        child = child_;
    }
    function test() private view {
        child.f();
    }
}

pragma solidity ^0.8.0;
interface IFoo {
    function foo() external;
}

pragma solidity ^0.8.0;
contract Foo {
    mapping(address => address) public addresses;
    mapping(address => mapping(address => uint256)) allAddressMap;
    address[] addrList;
    constructor(address[] memory addrs_) {
        for(uint i=0; i<addrs_.length; i++){
            addresses[addrs_[i]] = addrs_[i];
        }
    }
    function foo() public {
        for(uint i=0; i<addrList.length;i++){
            allAddressMap[addrList[i]][addresses[i]] = 0;
        }
    }
}
