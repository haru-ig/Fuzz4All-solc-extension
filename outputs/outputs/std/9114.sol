pragma solidity ^0.8.0;
contract CompiledExampleCoinContract {
    uint256 _totalSupply;
    uint256 _totalIssued;
    mapping(address => uint256) _ownerTokens;
    uint256 _issuedPerByte;
    uint256 private _supplyPerBlock = 10**20;
    uint256 public constant MintTokensPerBlock = 10;
    uint256 _totalSupplyByLockDownEra;
    function () external payable {}
    function setSupplyPerEra(uint20) public {}
    function setLastCoinbase(address) public {}
    function setIssuedPerByte(uint) public {}
    function _mintTokens(address account, uint256 amount) internal {
        if (amount == 0) return;
        _ownerTokens[account] = _ownerTokens[account] + amount;
        _totalSupply = _totalSupply + amount;
    }
    function mintTokens(uint256 amount) public {
        if (amount == 0) return;
        if (!_msgSender()) {
            for (uint256 i; i < amount; i++) {
                if (block.timestamp > _totalSupplyByLockDownEra + 5 * 60) {
                    _totalSupplyByLockDownEra += _supplyPerBlock;
                }
                _mintTokens(address(this), MintTokensPerBlock);
            }
            return;
        }

        for (uint256 i; i < amount; i++) {
            if (block.timestamp > _totalSupplyByLockDownEra + 5 * 60) {
                _totalSupplyByLockDownEra += _supplyPerBlock;
            }
            _mintTokens(owner(), MintTokensPerBlock);
        }
        _totalIssued = _totalIssued + amount;
    }
    function getMintTokens() public view returns (uint256) {
        return _totalIssued;
    }
    function getOwnedTokens(address tokenAddress) public view returns (uint256) {
        return _ownerTokens[tokenAddress];
    }
}
