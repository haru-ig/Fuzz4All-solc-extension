pragma solidity ^0.8.0;
contract Ownable {
    address payable private owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor (){
        owner = payable(msg.sender);
    }

    function owner() public view returns(address payable memory owner){
        return owner;
    }

    function renounceOwnership() public virtual{
        emit OwnershipTransferred(owner, address(0));
        owner = payable(0x0);
    }

    function transferOwnership(address payable newOwner) public virtual {
        _checkWhenNotPaused();
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function _checkWhenNotPaused() internal view{
        require(paused == false, "Contract is paused");
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier whenNotPaused() {
        require(paused == false, "Contract is paused");
        _;
    }

    function _setWhenPaused(bool paused) internal onlyOwner {
        require(paused == false, "Contract is already paused");
        emit Pause(paused);

        this.paused = paused;
    }

    function _checkWhenNotOwner() internal view {
        require(msg.sender!= owner, "Only owner can call this function");
    }

    bool public paused = false;
}
