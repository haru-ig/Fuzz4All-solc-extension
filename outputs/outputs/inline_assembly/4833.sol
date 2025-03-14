pragma solidity ^0.8.0;
library mutator_library{
    struct mutator{
      uint i;
      uint h;
    }
    function modify(mutator _mutator) public pure{
        _mutator.i = _mutator.h;
    }
}
