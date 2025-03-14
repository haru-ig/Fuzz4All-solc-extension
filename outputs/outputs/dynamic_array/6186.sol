pragma solidity ^0.8.0;

contract Control is I {

  bytes32 internal constant TAG = "0004";


  function SetLoggingEnabled(bool enabled) public returns (bool) {
    bytes32 key = TAG;
    bytes memory str = bytes(enabled? "1" : "0");
    bytes32 existingVal;
    assembly {
      existingVal := sloadKEY(keccak256(key))
    }
    if( bytes(existingVal)!=str) {
      sstoreKEY(key, str)

      emit SetLoggingEnabled(enabled)

      return false;
    } else {
      return true;
    }
  }

}
pragma solidity ^0.8.0;

 contract ControlMock is I {


  function setControl(bytes32 control) public pure {
    assembly {
      sstore(0x40, control)
    }
  }



  I control;

  func setControl(bytes32 _contractControl) public pure {
    control = I(_contractControl);
  }


}
 pragma solidity ^0.8.0;


abstract contract Token {

    string internal name_;
    string internal symbol_;

    uint8 internal decimals_;

    bool internal _mintingPaused;

    mapping(address => mapping (address => uint256)) public balances_;

    mapping(address => address) allowedAddresses_;

    event Mint(address indexed to, uint256 amount);
    event MintFinished();
    event Burn(address indexed from, uint256 amount);
    event BurnFinished();
    event Transfer(address indexed from, address indexed to, uint256 value);
    event TransferFinished();

    constructor (string memory _name, string memory _symbol, uint _decimals) {
      name_ = _name;
      symbol_ = _symbol;
      decimals_ = _decimals;
      _mintingPaused = false;
    }

    function pauseMinting() public virtual {
      _mintingPaused = true;
    }


    function resumeMinting() public virtual
