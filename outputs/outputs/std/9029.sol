pragma solidity ^0.8.0;
contract ModifiedExample {

    uint[] mutable arr;
    uint[] immutable arrOriginal;

    uint8[] array1;
    uint8[] array2;
    uint8[] array3;
    uint8[] immutable array4;

    constructor(uint8[] memory data) {
        arr = data;
    }

    function getArrAt(uint index) public view returns(uint8) {
        return uint8(arr[index]);
    }

    function uint2uint8(uint source) public view returns(uint8) {
        return uint8(source + source>>7);
    }

    function setArrAt(uint index, uint8 source) public {
        arr[index] = uint8(source);
    }
}

contract OwnedExample {

    address owner;
    address[2] editors;

    constructor() {
        editors.push(msg.sender);
    }

    modifier onlyOwner {
        require(isOwner());
        _;
    }

    modifier onlyEditors {
        require(isEditors());
        _;
    }

    function isEditor() public returns(bool) {
        for (uint i = 0; i < editors.length; i++) {
            if (msg.sender == editors[i]) {
                return true;
            }
        }
        return false;
    }

    function isEditors() public view returns(uint) {
        if (msg.sender == owner || isEditor()) {
            return editors.length;
        } else {
            return 0;
        }
    }

    function makeEditor() public onlyOwner returns(bool) {
        editors.push(msg.sender);
        return true;
    }

    function removeEditor(uint index) public onlyOwner returns (bool) {
        require(index < editors.length);
        for (uint i = index, j = i+1; i < editors.length; i++) {
            editors[i] = editors[j];
            j++;
        }
        editors.length--;
    }

    function setEditor(uint index, address account) public onlyEditors returns(bool) {
        require(index < editors.length);
        editors[index] = account;
        return true;
    }

    modifier restricted () external {
        if (!isEditor()) {

        }
        _;
    }

}
