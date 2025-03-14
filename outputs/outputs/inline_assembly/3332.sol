pragma solidity ^0.8.0;
contract CallMutablility {
   uint public totalValue = 0;
   bytes public newTotalValue;
   uint public value  = 0;
   uint public valueToAdd = 0;

    function ChangeValue(uint _valueToAdd) external {
    value += _valueToAdd;
    }
    function getNewValue(bytes calldata data) public {
    totalValue += uint(keccak256(abi.encodePacked(keccak256(abi.encodePacked(data)))));
    newTotalValue = abi.decode(data, (bytes));
    }

    function addValue() external payable {
      valueToAdd = uint(keccak256(abi.encodePacked(keccak256(abi.encodePacked(_valueToAdd))))));
        changeValue(valueToAdd);
    }

     function changeValue(uint value) public {
        value += value;
    }
}
