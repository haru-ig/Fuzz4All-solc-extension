pragma solidity ^0.8.0;
contract Test5 {
    struct Foo {
        bytes32 bar;
    }
    modifier foo() {
        uint _id = this;
        Foo storage _foo = Test4.getStorage(_id);
        _foo.bar = fooInternal(_foo.bar, 14);
        _foo.bar =  '4';
        assembly {mstore(0x0, mload(0x0))}
    }
    function fooInternal(bytes32 _bar, uint _id) private pure returns (bytes32 ) {
        return  _bar + 'foo'!_id;
    }
    function s() public pure returns (uint) {
        return 0;
    }
}
