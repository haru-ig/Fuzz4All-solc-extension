pragma solidity ^0.8.0;

contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    function test(uint256 v) public {
        value = v;
        value2 = value;
    }
}


pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    function test(uint256 v) public {
        value = v;
        value2 = value;
    }
    function f() public view returns(uint256) {
        return value;
    }
    function g() public view returns(uint256) {
        return value2;
    }
}


library Lib {





    uint256[] public array;



    constructor() public {
         for (uint256 i = 0; i < 5; i++) {
             array[i] = uint256(uint256(uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp, evm.accounts[0].balance, block.coinbase))))));
         }
     }


    function size() public view returns (uint256) {
         return array.length;
     }


    function at(uint256 idx) public view returns (uint256) {
         return array[idx];
     }

    /**
     * @notice Calls a function with a single parameter, adding it to the start of `array`.
     *      Doesn't actually have any side effects, but allows the contract to be tested.
     *      Note that because of how Solidity works, adding a parameter
