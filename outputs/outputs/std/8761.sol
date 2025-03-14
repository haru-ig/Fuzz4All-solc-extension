pragma solidity ^0.8.0;
contract Mutated6 {

  uint immutable _value = 20000000;
}

pragma solidity ^0.8.0;
contract Mutated5 {

  uint immutable _value = 0;
}

pragma solidity ^0.8.0;
contract Mutated5 {

  uint immutable _value = 0;

  function methodMod(uint _number) public view returns(uint){
    return uint(uint(_value) % (_number * 100));
  }
}

pragma solidity ^0.8.0;
contract Mutated5 {

  uint[] public _list;

  function add(uint _value) public pure returns (uint _sum) {
    for (uint i = 0; i < _list.length; i++) {
      _sum += _list[i];
    }

    return _sum;
  }
}
contract Mutated5 {
  uint[] public _list;

...
  bytes public secret;
  constructor(bytes memory _secret) public {
    secret = _secret;
  }
...
}

pragma solidity ^0.8.0;
contract Mutated4 {

  address[] public _list;

  function add(bytes memory _value) public pure returns (address) {
    for (uint i = 0; i < _list.length; i++) {
      _list[i] = address(_value);
    }
    return address(_value);
  }
}
