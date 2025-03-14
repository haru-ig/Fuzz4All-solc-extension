pragma solidity ^0.8.0;
contract XToken2 {
    IToken2 public baseToken;
    constructor(IToken2 _baseToken) {
        baseToken = _baseToken;
    }

    modifier onlyBaseToken() {
        baseToken.test2();
        _;
    }
    function test()external onlyBaseToken {

    }
}
