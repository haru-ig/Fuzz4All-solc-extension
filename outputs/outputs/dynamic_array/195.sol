pragma solidity ^0.8.0;
contract C4 {
    constructor public () {

        mapping (Foo => uint256) internal inner;
        inner[(Foo)1] = 20;
        b[Foo.Second] = 20;
    }
}
