pragma solidity ^0.8.0;

contract Contract {
    address public contractAddr;
    bytes4 public constant FUNCTION_ABI = bytes4(keccak256("functionFunc(uint[5])"));
    bytes4 constant PURE_ABI = bytes4(keccak256("pure"));
    mapping (uint => uint) public mapOfMaps;
    mapping (address => uint) public mapOfNumbers;
    uint[5] public testList;

    constructor () {
        address myAddress = address(this);
        contractAddr = myAddress;
    }

    function run() public {
        if (msg.value > 0) {
            mapOfNumbers[contractAddr] += msg.value;

        }
    }

    function simpleCall() public {
        bytes memory data;
        address(data).call();
    }

    function functionCall() public {
        address(contractAddr).call{value: 1 ether}("");
    }

    function pure() public pure {}

    function updateMap() public view pure returns(uint total){
        total = 12;
        for (uint i = 1; i <= 10; i++) {
            total *= i;
        }
    }

    function update2() public pure returns(uint) {
        return 3;
    }
    function update3() public pure returns(uint) {
        testList[0] = 12;
    }

    function update4() public pure {

    }
}
