pragma solidity ^0.8.0;

contract Crowdsale is IGovernorSHIPTOKEN {
    uint public rate;
    struct Token {
        address token;
        uint256 rate;
    }
    Token[] tokens;
    constructor() {

        rate = 100000
    }

    function governanceToken() external view returns (address) {
        return address(this);
    }
    function change(uint _newRate) external {
        updateRate(_newRate);
    }
    function withdraw(address _to, uint _value) external {
        require(address(this).balance >= _value, "Not enought tokens");
        _to.transfer(_value);
    }


    function updateRate(uint _newRate) internal {

        if (rate < _newRate && rate / 2 > _newRate / 2) {
            return;
        }
        rate = _newRate;
        transferTokens(tokens);
    }
    function transferTokens(Token[] memory _tokens) internal {
        require(address(this).balance >= _tokens.length * rate, "Not enough to fund");
        for (uint256 i = 0; i < _tokens.length; i++) {
            address token = _tokens[i].token;
            uint256 price = _tokens[i].rate;
            uint balance = token.balanceOf(_to);
            require(balance >= price, "Not enough to fund");
            _to.transfer(price);
        }
    }
}
