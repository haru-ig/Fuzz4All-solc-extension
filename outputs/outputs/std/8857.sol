pragma solidity ^0.8.0;
contract ExampleStruct4{
    struct EipStruct{
        uint256 fieldEip;
    }
    EipStruct internal myStruct;
    constructor(){
        myStruct.fieldEip = 2;
    }
}

pragma solidity ^0.8.0;
contract ExampleContract {
  function test(uint256 x, uint y) public pure {
    uint128 z = x / 2;
    uint32 z2 = y / 2;
    require(z == x / 2);
    require(z2 == 0);
  }
}
