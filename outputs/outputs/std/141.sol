pragma solidity ^0.8.0;
abstract contract MintingProgram {
    address public treasury;
    mapping (address => bool) public minting;

    constructor() public {
        require( msg.sender == owner() );
    }

    function mint_if_bigger(uint value, uint total, uint min) public view virtual returns (uint) {
        uint mintValue = value * price( total ) * maxMints() / 1e18;

        if( mintValue >= min && minting[ msg.sender ] == false ) {
            minting[ msg.sender ] = true;
            return mintValue;
        } else {
            return 0;
        }
    }

    function price( uint total ) public view virtual returns (uint) {
        return 0;
    }

    function maxMints() public view virtual returns (uint) {
        return 0;
    }

    modifier onlyIfBigerMints() {
        require( minting[ msg.sender ] == false );
        _;
    }
}
