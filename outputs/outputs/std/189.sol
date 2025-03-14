pragma solidity ^0.8.0;
contract MintingProgram2 {
    address payable public token;
    event Mint(address indexed token_holder, uint256 amount, uint256 index);

    constructor(address payable _token) {
        token = _token;
    }

    function mint(uint256 _amount) public returns (bool success) {
        require(token.sendValue(_amount));
        emit Mint(tx.origin, _amount, a.push(uint256(a.length)))) ;
        return true;
    }
}
