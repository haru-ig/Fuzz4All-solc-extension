pragma solidity ^0.8.0;
contract BakingBeerExample {
    function modify(uint8 _a) pure public returns ( uint16) {
      uint64 _bout;
      uint256 j;
      while (j < 10) {
        _bout += _a;
        _a += _a;
        j++;
      }
    }
}
contract BrewingBeerExample {
    function modifyFromContract( BakedBeerExample _baked ) pure public returns ( uint8 ) {
        return _baked.modify(221);
    }
}

pragma solidity ^0.8.0;
contract BrewingViaProxyExample {
    function modify(uint _a) public proxy() pure returns ( uint8 ) {
        return modifyFromContract( BakingBeerExample(0x58930d132d9748546c9B4A9D66757864aDf5c4f0) );
    }
    function modifyFromContract( BakingBeerExample _baking ) returns ( uint8 ) {
        return _baking.modify(221);
    }
    function proxy() pure returns ( BakingBeerExample ) {
        return BakingBeerExample(0x58930d132d9748546c9B4A9D66757864aDf5c4f0);
    }
}
