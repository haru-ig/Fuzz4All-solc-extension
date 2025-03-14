pragma solidity ^0.8.0;
address IToken = ITokenAddress;
contract DummyToken{
    IToken private _token;

    constructor(address tokenAddress) public{
        _token = IToken(tokenAddress);
        emit ChangedAddress(0x0, address(tokenAddress));
    }

    function exchange(address prevAddress) external{
        IToken(prevAddress).exchange(0x0);
    }

    function getAddress() public view returns(address){
        return address(this);
    }
}
