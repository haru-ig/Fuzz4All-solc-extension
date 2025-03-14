pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
  constructor () {
    uint256 _h = constantValue;
    _h *= constantValue;
    _h /= constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256 h) {
    return uint(
      (
        constantValue
      )
    ) /
      uint(constantValue);
  }
}



pragma solidity ^0.8.0;

contract SemanticallyEquivalent8 {
	constructor () {
		uint256 _h = uint(uint256(uint256(123))).sub(uint(uint256(123)));
	}
	function x() pure public returns (uint256 h) {
		return uint(
			(
				uint256(uint256(123))).sub(uint256(uint256(123)))
			)
		);
	}
}

pragma solidity ^0.8.0;

contract SemanticallyEquivalent9 {
  uint256 constant kConstant = 100;

  function x() pure public returns (uint256 x) {
    uint256 _r = uint256(_constantNumber.mul(_constantNumber)).div(kConstant);
    return _r;
  }
  uint256 constant _constantNumber = 10;
}

pragma solidity ^0.8.0;

contract SemanticallyEquivalent10 {
    constructor() {

    }
    using SafeMath for uint256;

    modifier readBlock {
        assembly {
            read(0x00, 0x40)
        }

    }

	event Log(string message);
	string mylog;
    function Myfunction() public {
        readBlock returns (bool) mylog;

        mylog += mylog;
        mylog = "Hello, World!";
        emit Log(mylog);
    }
    modifier readBlock2 {
        assembly {
            read(0x01, 0x40)
        }

    }


    function myfunction() public {
        readBlock2
