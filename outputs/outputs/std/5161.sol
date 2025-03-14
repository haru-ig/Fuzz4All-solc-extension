pragma solidity ^0.8.0;
contract Mutated3 {
    function f(uint a) public pure {
        unchecked {
            uint x = a;
            uint y = a + 1;
            uint z = a + 2;
        }
    }
}
pragma solidity ^0.8.0;
contract Mutated4 {
    constructor (uint x) public payable {
      address payable c = msg.sender;
      address payable f;
      (c.call.value(0)() = new (address payable) (Mutated2));
    }
}

pragma solidity ^0.8.0;
struct Array2D {
    bytes2[4][42] public a;
}
contract ArraySort {
    function min() internal pure returns (uint x, uint[42] memory b) {
