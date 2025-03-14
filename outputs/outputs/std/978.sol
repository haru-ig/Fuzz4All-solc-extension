pragma solidity ^0.8.0;
contract Mutate100ToUint256
{
	uint256 _initialUintValue;

	constructor()
    {
        require(_initialUintValue!= 0, "Error: value must not be 0");
        _initialUintValue *= 100;

    }
    function setUintValue(uint256 newValue)
    {

        _transfer(0, _payableAccount, newValue);
    }
    function _transfer(address from, address to, uint256 value) public
    {

        require(value!= 0, "Error: value must not be 0");


        _mappingOfContractToBalance[from] = _mappingOfContractToBalance[from].sub(value);
        _mappingOfContractToBalance[to] = _mappingOfContractToBalance[to].add(value);
    }
}
