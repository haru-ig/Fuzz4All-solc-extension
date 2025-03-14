pragma solidity ^0.8.0;
import "./Array.sol";
contract MultiArray is ArrayMutatorConstants{
  address private constant EMPTY_ADDRESS = address(0);
  bool private _isStatic;


  address private _array;

  address private _array2;
  address public contractAddr;
  address internal _array3;

  modifier onlyContract() {
    require(_msgSender() == contractAddr, "Please pass contract address in address constructor");
    _;
  }

  modifier onlyContract2(){
    require(_msgSender() == contractAddr, "Please pass contract address in address constructor");
    _;
  }

  function create() public onlyContract{
     _array = new Array.Address(2);
     _isStatic = true;
     _array3 = address(this);
  }

  function test() public {
    _array2.push(address(this));
    assert(Array.AddressType.get(address(_array2)) == Array.AddressType.ARRAY_ADDRESS_TYPE);



    uint16[2] memory testResult = Array.AddressType.getArray(address(_array));
    assert(testResult[0] == 1);
  }

  modifier onlyIfStaticArray(){
    require(Array.AddressType.isStaticArray(address(_array3)), "Address must be STATIC!");
    _;
  }


   {
    uint16[2] memory testResult = array2.getArray(address(_array));
    assert(testResult[0] == 1);
    testResult = array2.getArray(address(_array3));
    assert(testResult[0] == 0);

    uint256[] memory testResult2;
    testResult2 = ArrayMutator2.Int16Mutator.getArray(address(_array));
    assert(testResult2[0] == 1);
  }

  modifier onlyStatic(){
    require(_isStatic, "Address must be STATIC!");
    _;
  }
}
