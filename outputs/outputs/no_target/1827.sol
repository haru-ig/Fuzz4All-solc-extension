pragma solidity ^0.8.0;
contract Mutate09 {
    function mutated() mutates onlyAdd external{
      _1 = 0;
      uint s = (_1 << 128) >> 128;
    }
}

pragma solidity ^0.8.0;
