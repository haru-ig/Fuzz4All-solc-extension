pragma solidity ^0.8.0;
contract Additive {


    uint z = add(x, 3);
    if (z == 5) {
        x = 3; y = 5; z = add(x,y);
    }
    else x = 3;
  }


}

pragma solidity ^0.8.0;
contract Modulo {

  function sub(uint a, uint b) public pure returns (uint)
  {
    return a%b;
  }
  function subMod(uint a, uint b, uint a2) public pure returns (uint)
  {
    return (sub(a,b)%a2);
  }
}
