pragma solidity ^0.8.0;
contract BaseToken is IToken {
    IToken private _token;
    constructor (address token) {
        _token = IToken(token);

    }

    function transfer(uint256 amount) public override returns(bool){

    }
}
