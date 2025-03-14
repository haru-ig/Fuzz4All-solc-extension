pragma solidity ^0.8.0;
contract Mut9 {
    enum B {
        a,
        aa,
        ab,
        ba,
        bb
    }
    mapping(bytes32 => B) public _storage;
    event testEvent(B _b);
    constructor() {
      for (uint256 i = 0; i <= 2 ** 5; i++) {
          uint256 b = uint8(i);
          setB(i, B(b));
      }
    }
    modifier test() {
      _storage[uint8(99)] = B(uint8(99) + 2);
    }

    function setB(bytes32 key, bytes1 value) public test {
      for (uint256 i = 0; i <= 2 ** 5; i++) {
          uint256 b = uint8(i);
          _storage[i] = B(b);
      }
      emit testEvent(B(bytes1(0)));
      _storage[key] = B(bytes1(value));
    }
}
