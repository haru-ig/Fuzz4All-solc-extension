pragma solidity ^0.8.0;
contract Array {
    function getElementByAddress(address arrayAddress, uint256 index) public view returns(uint256)
    {
        return getElement(arrayAddress, index);
    }
    function setElementByAddress(address arrayAddress, uint256 index, uint256 newElement) public {
        setElement(arrayAddress, index, newElement);
    }
    function getElement(address arrayAddress, uint256 index) public view returns(uint256)
    {
        return uint256(arrayAddress[0]);
    }
    function setElement(address arrayAddress, uint256 index, uint256 newElement) public
    {
        arrayAddress.transfer(newElement);
        arrayAddress[0] = newElement;
    }
    function min(uint256 x, uint256 y) public pure returns(uint256) {
        if (x < y) {
            return x;
        }
        return y;
    }
}
contract MultiPrecision {

    uint256 public precision;

    struct precisionStorage
    {
        uint256 value;
    }
    mapping(address => precisionStorage) public storages;


    event NewPrecision(uint256 _newPrecision);


    constructor(uint256 newPrecision_) public {
        precision = newPrecision_;
        storages[msg.sender] = precisionStorage(precision);
    }


    modifier precisionModifier(uint256 requiredPrecision_) {
        if (requiredPrecision_ > precision) {
            revert();
        }
        _;
    }



    function getValue(uint256 value) public view returns (uint256) {
        return uint256(storages[msg.sender].value);
    }
    function withValue(uint256 value) public {
        bytes memory emptyData;
        (bool result, ) = msg.sender.call{value: value}(emptyData);
    }
    function add(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 z = x + y;
        if (z < x) {
            return z;
        } else {
            return z;
        }
    }
    function subtraction(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 z = x - y;
        if (z < x) {
            return z;
        } else {
            return x - y;
        }
    }
    function multiplication(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }

    function divided(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 z = x / y;
        if (z < x) {
            return z;
        } else {
            return x / y;
        }
    }

    function squareRoot(uint
