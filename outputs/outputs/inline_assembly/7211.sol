pragma solidity ^0.8.0;

contract ERC20Token is IERC20Token{
    address private immutable _owner;
    address private immutable _issuerAddress;

    constructor (address _ownerAddress, address _issuerAddress) {
        require(_ownerAddress!= address(0), "Owner Address can not be 0");
        require(_issuerAddress!= address(0), "Issuer Address can not be 0");

        _owner = _ownerAddress;
        _issuerAddress = _issuerAddress;
    }

    function totalSupply() public view override returns (uint256) {
        return 0;
    }

    function balanceOf(address _ownerAddress) public view override returns (uint256) {
        require(_ownerAddress == _owner, "Function only works for owner", );
        return 0;
    }

    function transfer(address _to, uint256 _value) public view override returns (bool) {
        require(_value > 0, "Can not transfer 0");
        return false;
    }

    function approve(address _spender, uint256 _value) public view override returns (bool) {
        require(_value > 0, "Approve with 0 or negative number");
        return false;
    }

    function allowance(address _ownerAddress, address _spenderAddress) public view override returns (uint256) {
        return 0;
    }
}
