pragma solidity ^0.8.0;
contract FallbackModifier {
    mapping(bytes32 => uint) public value;
    bytes32 public hash;
    function add(bytes32 _hash) private returns(bytes32) {
        value[_hash] += 1;
        return _hash;
    }

    function test() public {
        hash = add(hash);
        fallback(hash);
    }
}
