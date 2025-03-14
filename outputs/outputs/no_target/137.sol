pragma solidity ^0.8.0;


contract MyContract {
    constructor() public {   }



    function isMyContract() public view returns (bool) {
        return true;
    }
}

contract Minting is MyContract {

    modifier _onlyMyContract() {
        require(isMyContract(), "Only from my contract.");
        _;
    }
    function mint() public _onlyMyContract { require(minting(), "Minting already called."); IERC20(address(this)).mint(); }
    function minting() public pure returns (bool) { return false; }
    function burning() public pure returns (uint) { return 0; }
}

contract Burning is MyContract {

    modifier _onlyMyContract() {
        require(isMyContract(), "Only from my contract.");
        _;
    }
    function burning(uint quantity) public _onlyMyContract { IERC20(address(this)).burn(quantity); }
    function burnFrom(address account, uint quantity) public _onlyMyContract { IERC20(address(this)).burnFrom(account, quantity); }
}
