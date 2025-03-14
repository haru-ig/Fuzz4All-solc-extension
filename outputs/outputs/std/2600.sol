pragma solidity ^0.8.0;
interface IERC721 {
    event Transfer(address indexed previousOwner, address indexed newOwner, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    function balanceOf(address owner) external view returns (uint256 balance);
    function ownerOf(uint256 tokenId) external view returns (address owner);

    function transfer(address to, uint256 tokenId) external returns (bool success);
    function approve(address to, uint256 tokenId) external returns (bool success);
    function setApprovalForAll(address operator, bool _approved) external returns (bool success);
    function getApprovalForAll(address owner) external view returns (bool operator);

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external returns (bool success);

}
pragma solidity ^0.8.0;
contract Array is IERC721Enumerable {
    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowed;

    constructor() {
        _totalSupply=1;
    }

    function balanceOf(address _owner) public view returns (uint256 _balance) {
        return _balances[_owner];
    }

    function ownerOf(uint256 _tokenId) public view returns (address owner) {
        return _ownerOf(_tokenId);
    }

    function transferFrom(address _from, address _to, uint256 _tokenId) public
        returns (bool success) {

        _transfer(_from, _to, _tokenId);
        uint256 _fromBalance = balanceOf(_from);
        uint256 _fromBalanceCheck = _fromBalance-_tokenId;
        require(_fromBalanceCheck>=0,"Cannot transfer to an address that has no holdings.");
        _balances[_from] = _fromBalanceCheck;

        uint256 _toBalance = balanceOf(_to);
        uint256 _toBalanceCheck = _toBalance+_tokenId;
        require(_toBalanceCheck<=_toBalance,"Cannot transfer any more tokens to the same owner.");
        _balances[_to] = _toBalanceCheck;

        emit Transfer(_from, _to, _tokenId);
        return true;
    }

    function transfer(address _to, uint256 _tokenId) public returns (bool success) {
        _transfer(msg.sender, _to, _tokenId);
        return true;
    }

    function _transfer(address _from, address _to, uint32 _tokenId) internal {
        require(address(this).balance>=balanceOf(_to),"Error sending token, not enough coins.");
        require(_ownerOf(_tokenId) == _to,"Error sending token, token already owned by new owner.");
        _allowed[_from][msg.sender] -= balanceOf(_from);
        _balances[_from] -= 1;
        _balances[_to] +=
