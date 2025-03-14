pragma solidity ^0.8.0;
contract Mutater11 {
    constructor(address _address) {
        setReturnAddress11(_address);
        setReturnAddress10(_address);
    }
    function setReturnAddress11(address _address) public {
        address temp;
        assembly {
            temp := mload(add(add(codespace, 4), 0x80))
        }
        returnReturnAddress11Value11 = _address;
    }
    function getReturnAddress11() public view returns (address) {
        return returnReturnAddress11Value11;
    }
    address public returnReturnAddress11Value11;
    function setReturnAddress10(address _address) public {
        address temp;
        assembly {
            temp := mload(add(add(codespace, 4), 0x80))
        }
        returnReturnAddress10Value10 = _address;
    }
    function getReturnAddress10() public view returns (address) {
        return returnReturnAddress10Value10;
    }
    address public returnReturnAddress10Value10;
}

pragma solidity ^0.8.0;
contract Mutater11 {
    constructor() {
        setReturnAddress10();
        setReturnAddress12();
    }
    function setReturnAddress10() public {
        address temp;
        assembly {
            temp := mload(add(add(codespace, 4), 0x80))
        }
        returnReturnAddress10Value10 = address payable{gas: 100000}(_address);
    }
    function getReturnAddress10() public view returns (address payable payable) {
        return returnReturnAddress10Value10;
    }
    address public returnReturnAddress10Value10;
    function setReturnAddress12() public {
        address temp;
        assembly {
            temp := mload(add(add(codespace, 4), 0x80))
        }
        returnReturnAddress12Value12 = address payable{gas: 10000000}(_address);
    }
    function getReturn
