pragma solidity ^0.8.0;
contract Caller {
    function call() external payable returns (address,uint256) {
      return (address(this), 15);
    }
}

pragma solidity ^0.8.0;


pragma version ^0.6.12;

contract SimpleFallback {

}


pragma solidity ^0.8.0;

pragma version ^0.6.12;


pragmaAbiEncoderV3;

contract UntouchedFallbackModifier {
    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;
    modifier onlyFallback() {
        storedNumber = 17;
        _;
        storedNumber = 18;
    }
    fallback() external payable onlyFallback {
        storedNumber = 19;
    }
}

pragma solidity ^0.8.0;

pragma version ^0.6.12;


pragmaAbiEncoderV3;

contract Caller {
    function call() external payable returns (address,uint256) {
       return (address(this), 15);
    }
}
