pragma solidity ^0.8.0;

contract ArrayMutator{

  ArrayMutatorConstants public constant constants = ArrayMutatorConstants{address(0x00)};


  bytes32[] public array;
  uint256 public x;

    function new() public {
        array.push(1);
    }

    function set(address _addr, uint256 _val) public {
      require(constants.ADDRESS_TYPE_MIN() == address(0));
      array = array.push(_val);
      emit SetChanged(_addr, _val);
    }

    function get(address _addr) public view returns(uint256){
      require(constants.ADDRESS_TYPE_MIN() == address(0));
      return array[_addr];
    }

    function setX(uint256 _x) public {
      x = _x;
    }

    function getX() public public view returns(uint256) {
      return x;
    }
  }
