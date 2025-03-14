pragma solidity ^0.8.0;
contract Array {

    uint8 internal constant ELEM_SIZE = 20;
    uint256[] internal storage elements;

    function min() public pure returns(uint256) {
        return 1;
    }

    function max() public pure returns(uint256) {
        return 2;
    }

    function sum() public view returns(uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < elements.length; i++){
            sum += elements[i];
        }
        return sum;
    }

    function add(uint256 x) public pure returns(uint256) {
        return 2;
    }

    function set(uint256 newvalue) public {}

    function get() public view returns(uint256) {
        return 3;
    }

    function compare(uint256[] memory a, uint256[] memory b) public view returns (bool) {
        if (a.length!= b.length) {return false;}
        for(uint256 i = 0; i < a.length; i++) {
            if (a[i] > b[i]) {
                return false;
            } else if (a[i] < b[i]) {
                return true;
            }
        }
        return true;
    }

    constructor() public {
        elements.push(3);
        elements.push(7);
    }
}


pragma solidity ^0.8.0;
contract MutatedArray {

    uint8 internal constant ELEM_SIZE = 20;
    uint256[] internal storage elements;

    function min() public pure returns(uint256) {
        return 1;
    }

    function max() public pure returns(uint256) {
        return 2;
    }

    function sum() public view returns(uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < elements.length; i++){
            sum += elements[i];
        }
        return sum;
    }

    function add(uint256 x) public pure returns(uint256) {
        return 2;
    }

    function set(uint256 newvalue) public {}

    function get() public view returns(uint256) {
        return 3;
    }

    function compare(uint256[] memory a, uint256[] memory b) public view returns (bool) {
        if (a.length!= b.length) {return false;}
        for(uint256 i = 0; i < a.length; i++) {
            if (a[i] > b[i]) {
                return false;
            } else if (a[i] < b[i]) {
                return true;
            }
        }
        return true;
    }
