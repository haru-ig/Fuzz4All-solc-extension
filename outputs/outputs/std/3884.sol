pragma solidity ^0.8.0;

contract ContractOwner is IContractOwner{
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );
    address _previousOwner;

    constructor(){
    }
    function setOwner(address owner) external{
        require(msg.sender == address(0),"Ownable: caller already has ownership");
        _previousOwner = msg.sender;
        emit OwnershipTransferred(address(0), owner);
        msg.sender.transferOwnership(owner);
    }

    function getOwner() public view returns(address) {
        return _previousOwner;
    }
}



contract CreateArray {
    uint256 private _length;
    uint256 private _size;
    uint256 private _value;
    function setLength(uint256 length) external{
        _length = length;
        require(_length >= 3, "Array: length must be at least 3");
    }
    function setValue(uint256 value) external{
        _value = value;
    }
    function getLength() public view returns (uint256){
        return _length;
    }
    function getValue() public view returns (uint256) {
        return _value;
    }
    function __callback() external payable{
        require(msg.value >= gasprice, "Array: not enough gas for gas cost");
        uint256 lastValue = getLastElement();
        require(lastValue < _length, "Array: index out of range");
        _length += 1;
        _value += 1;
    }
    function getLastElement() public view returns (uint256) {
        uint256 length = getLength();
        uint256 value;

        require(length % 2!= 0, "Array: length must be divisible by 2 to access last element");
        for (uint256 i = length; i > 1;i--) {
            value = getElement(i);
        }
        return value;
    }
    function getElement(uint256 index) public view returns (uint256) {
        require(index <= _length, "Array: index out of range");
        require(index > 0, "Array: index must be greater than zero");
        return (getData(index-1));
    }

    function getData(uint256 index) public view returns (uint256) {
        uint256 length = getLength();
        uint256 value;

        require(length % 2!= 0, "Array: length must be divisible by 2 to access last element");
        for (uint256 i = length; i > 1;i--) {
            value = _returnData(i, length);
        }
        index--;
        return (getData(index));
    }

    function _returnData(uint256 index, uint256 length) public view returns (uint256) {
        uint256 value;
        uint256 data;
        uint256 j = index;
        if (index % 2!= 0) {
            while (j
