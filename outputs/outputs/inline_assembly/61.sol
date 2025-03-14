pragma solidity ^0.8.0;
contract C {
    uint8 private _number;
    constructor(uint8 initialValue) {
      _number = initialValue;
    }
    function setNumber(uint8 newValue) public {
      _number = newValue;
    }
    function decrementNumber() public {
      _setNumber(_number - 1);
    }
    function _setNumber(uint8 newValue) internal {
      _number = newValue;
    }
}
pragma solidity ^0.8.0;
contract D is C {
    constructor(uint8 initialValue) C(initialValue) {
    }
    function setNumber(uint8 newValue) public {
      _setNumber(newValue);
    }
    function _setNumber(uint8 newValue) internal {
      _number = newValue;
    }
}

pragma solidity ^0.8.0;
contract E is C {
    uint8 private _number;
    constructor(uint8 initialValue) C(initialValue) {
    }
    function setNumber(uint8 newValue) public {
      _setNumber(newValue);
    }
    function _setNumber(uint8 newValue) private {
      _number = newValue;
    }
}

pragma solidity ^0.8.0;
contract F is C
{
    uint8 private _number;
    constructor(uint8 initialValue) C(initialValue) {
    }
    function setNumber(uint8 newValue) public {
      _setNumber(newValue);
    }
    function _setNumber(uint8 newValue) private {
      _number = newValue;
    }
}

pragma solidity ^0.8.0;
contract G
{
    uint8 private _number;
    constructor(uint8 initialValue) {
      _setNumber(initialValue)
    }
    function add() public {
      _number += 1;
    }
    function _setNumber(uint8 newValue) private {
      _number = newValue;
    }
}

pragma solidity ^0.8.0;
contract H is C
{
    uint8 public _number;
    constructor(uint8 initialValue) C(initialValue) public {
    }
    function setNumber(uint8 newValue) public {
      _setNumber(newValue);
    }
    function _setNumber(uint8 newValue) internal {
      _number = newValue;
    }
}


pragma
