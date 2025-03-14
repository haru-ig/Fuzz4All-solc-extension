pragma solidity ^0.8.0;
contract Mutator {
    function mutate(uint x, uint maxLength, uint minValue, uint maxValue) public pure {
        if (x < minValue) throw Error();
        x = x.mul(maxLength - minValue).add(minValue);
        if (x > maxValue) throw Error();
    }
    struct Error {
        function Assert() internal pure { require(false, "Failed"); }
      }
}
