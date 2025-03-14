pragma solidity ^0.8.0;
contract MutatedContract {

    uint8 internal public uint8State;
    uint256 public constant uint256Constant = 250;

    modifier constantModifier() public {


        uint8State = uint8(uint256Constant/65535);
        _;
    }

    function() external constantModifier {
    }
}
