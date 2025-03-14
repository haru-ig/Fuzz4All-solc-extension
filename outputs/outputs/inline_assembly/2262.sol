pragma solidity ^0.8.0;
interface IPayerI
{
    function payFeeForService(uint _amount) external returns(uint256);
}
contract Payer
{
    uint private _fee;
    IPayerI[1] internal _payees;
    mapping(address => bool) private _isPayer;
    address payable public payer;
    constructor() payable{
        payer = payable(address(this));
    }
    receive() payable external{
        if(!_isPayer[msg.sender]){
            _isPayer[msg.sender] = true;
            _fee = _fee / 2;
            uint _amount = _fee.add(address(this).balance);
            _payees.push(IPayerI(address(this)).payFeeForService(_amount));
        } else {
            _fee = _fee * 2;
        }
    }
}

pragma solidity ^0.6.0;
contract Ownable {
    address payable owner_;
    address payable anotherContractOwner;
    bool private _isDestroyed;
    constructor() {
        owner_ = payable(msg.sender);
    }
    modifier onlyOwner(){
        require(msg.sender == owner_, "only the contract owner can do this action")._;
    }
    function destroy() public onlyOwner {
        _isDestroyed = true;
        payee.destroy();
    }
    function owner() public view returns (address) {
          return owner_;
    }
}
contract Deployer is Ownable{

    function ownerOf(address contractAddress) public view returns (address) {
        return contractAddress!= address(0) && msg.sender == owner_? owner_ : contractAddress;
    }
    function deploy(address code, bytes calldata params) public {
        if (address(_code) == address(0))
        contractAddress = address(new Ownable());
        address contractAddress = ownerOf(address(_code));
        Ownable OwnableObject = Ownable(contractAddress);
        _code.accept{value: 0}();
