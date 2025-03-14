pragma solidity ^0.8.0;
contract ExampleStruct5{
    struct NonStandardComplexStruct{
        uint256 fieldEip;
        uint256 fieldFep;
        uint256 fieldGep;
        uint256 fieldHEP;
    }
    NonStandardComplexStruct internal myStruct;
    constructor(uint256 _id, uint256 _eip, uint256 _fep, uint256 _gep, uint256 _hep){

        myStruct = NonStandardComplexStruct(
          id            : _id,
          fep           : _eip,
          gep           : _gep,
          hep           : _hep
        );
    }
}


pragma solidity =0.8.12;
contract TestStruct{
  struct NonStandard{
    uint256 field;
  }
  mapping (uint256 => NonStandard) public map;
  constructor() public {}
  modifier test(){
    map[123] = NonStandard(42);
    map[321] = NonStandard(84);
    assert(block.coinbase == address(uint160(map[123])).sub(1));
    assert(block.coinbase == address(uint160(map[321])).add(1));

    return (true);
  }
}
