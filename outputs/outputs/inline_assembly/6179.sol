pragma solidity ^0.8.0;
contract MixedContractsExample {
  struct MixedContacts {
      uint y;
      uint256 x;
      uint32 _0;
      bytes y1;
      bytes x1;
      bytes2 _2;
      bytes3 _3;
      bytes4 _4;
      bytes5 _5;
  }
  function main(uint64 witness) public pure {
    MixedContacts memory x;
    x.y=x.y+witness;
    x.x=x.x+x.y+witness;
    x.x:=x.x+x.y+x.x+x.y-x.x-x.y;
  }
}

pragma solidity ^0.8.0;
contract MixedContractsExample {
    using SafeMath for uint;
    struct MixedContacts {
        uint256 x;
        uint y;
        uint32 _0;
        bytes x1;
        bytes2 _1;
        bytes4 _2;
        bytes5 _3;
        bytes6 _4;
        bytes7 _5;
        bytes8 _6;
        bytes9 _7;
        bytes10 _8;
        bytes11 _9;
        bytes12 _10;
    }
    function main(uint64 witness) public pure {
        MixedContacts memory x;
        x.x = x.x + witness;
        x.y = x.y + witness;

        x.x == x.x.add(x.y.add(witness));
        x.x == x.y.add(x.x.mul(x.y).add(witness).sub(x.y.mul(witness).sub(x.x)));

        x.x == witness.add(x.y);
        x.y == witness.sub(x.x);
        x.x == witness.add(x.y);

        uint256 b = witness+3;

        x.x == b.add(witness);
        x.x == x.x.add(b);
        x.x == x.y.mul(b).add(witness);


        x.x == x.x.sub(b);
        x.x == b.sub(x.x);

        x.x == b.sub(witness);
        x.x == witness
