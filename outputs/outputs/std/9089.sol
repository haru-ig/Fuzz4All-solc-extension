pragma solidity ^0.8.0;
contract Solidity {
    uint256 public constant value1 = 53;
    uint256 public constant value2 = 46;



    uint256 constant constant1 = 10;

    address constant constantAddress = 0xDEADBEEF;

    mapping (uint8 => string) private constantString;

    constructor() public{




        _address1 = payable(address(this));


        constant2 = true;
    }


    modifier onlyOne(){
        require ( _address1.balance >= constant1 * 250 );
        _;
    }
}
