pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C{
    struct Inner { string a; uint b; bytes c; bytes32 d; mapping(uint => string) e;  }
    Inner memory input;
    Inner storage _input;
    Inner storage _foo;
    Inner memory _foo_mod;
    address _bar;
    bool internal _baz;
    bool internal _foo_mod_bool;
    function test(address i) public pure  {
        Inner memory bar;
        Inner storage bar_storage;
        bar = i;
        bar_storage = i;
    }
    function modify(address bar_) public pure {
        _bar = bar_;
    }
}
