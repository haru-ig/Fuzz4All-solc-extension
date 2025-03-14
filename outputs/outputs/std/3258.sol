pragma solidity ^0.8.0;
contract Mutated{
  function b8_(uint i)
    internal
    returns (uint8){
    return uint8((10<30));
}
}


pragma solidity ^0.8.0;
contract Add{
  uint8 memory num;
  function add(uint x, uint y)
    internal
    pure
    returns (uint8){
    num = x+y;
    return num;
}
}


pragma solidity ^0.8.0;
contract Sub{
  uint8 memory num;
  function sub(uint x, uint y)
    internal
    pure
    returns (uint8){
    num = x-(x/y);
    return num;
}
}


pragma solidity ^0.8.0;
contract Get{
  uint8 m;
  bytes32 n;
  event newRandomNumber(uint);
  function getRandomNumberString()
    internal
    pure
    returns(bytes32){
    return keccak256(abi.encodePacked(m,n));
}
}


pragma solidity ^0.8.0;
contract Increment{
  uint8 m;
  uint n;
  event increment(uint);
  function getIncrementsString()
    internal
    returns(bytes32){
    return m+++"_"+n;
}
}


pragma solidity ^0.8.0;
contract Passwords{
  string memory p;
  event newPassword(bytes32);
  function getPassword()
    internal
    returns(string memory){
    p = sha256(abi.encodePacked(m,n));
    return p;
}
}
