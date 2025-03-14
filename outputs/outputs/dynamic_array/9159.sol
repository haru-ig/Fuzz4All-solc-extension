pragma solidity ^0.8.0;
interface IErc20 {
    event Approval(address indexed _owner, address indexed _Spender, uint256 _tokenId);
    function approve(address _spender, uint256 _tokenId) external;
    function balanceOf(address _owner) external view returns (uint256 balance);
    function transferFrom(address _from, address _to, uint256 _tokenId) external returns (bool success);
}

pragma solidity ^0.8.0;
contract SimpleArrayContract {

    IERC20[] public balances;

    address public contractAddress;


    constructor() {
        contractAddress = address(this);
    }


    function addBalance(IERC20 _new) public returns (bool added) {
        balances.push(_new);
        added = true;
        return true;
    }


    function setBalance(uint256 _newIndex, IERC20 _new) public {
        balances[_newIndex] = _new;
    }

    function balanceOf(uint256 _index) public view returns (IERC20 balance) {
        return balances[_index];
    }

    function setContract(address _newContract) public {
        contractAddress = _newContract;
    }


    function isTokenAssigned(address _caller, uint256 _tokenId) public view returns (bool assigned) {

        uint256 balanceLength = balances.length;
        for (uint256 i; i < balanceLength; ++i) {

            if (balances[i].transferFrom(_caller, contractAddress, _tokenId)) {
                assigned = true;
            }

            if (assign) break;
        }
    }
}
