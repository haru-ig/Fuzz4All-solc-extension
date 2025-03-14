pragma solidity ^0.8.0;
contract EquivalentArray{
	uint[] public array;
	function assignValue(uint index, uint value){
		array[index] = value;
	}
	function setValueByIndex(uint index, uint value){
		array[index] = value;
	}
	function getValueByIndex(uint index){
		return array[index];
	}
}

pragma solidity ^0.8.0;
contract NewArray{
	uint public constant SIZE = 10;
	uint[SIZE] private test;
	uint[] memory array;
	uint getMaximum(){
		uint min = uint(uint(0));
		for(uint i = 0; i < test.length; i++){
			if(min > test[i]){
				min = test[i];
			}
		}
		return min;
	}
	function Add(uint newValue, uint x_index, uint y_index){
		uint a = 0;
		if(x_index < 5){
			a += newValue;

			if(a < 10){
				if(y_index < array.length){
					array[y_index] = a;
					array.push(a);
				}
				else{
					addValue(a);
				}
			}
			else{
				array[x_index + y_index - 5] = a;
			}
		}
	}
	function addValue(uint value){
		array.push(value);
	}
	function getTest(uint value){
		return test[value];
	}
}

pragma solidity ^0.8.0;
contract AddValue{
    modifier onlyPositive{
        require(msg.value > 0, "Zero or positive number required.");
        _;
    }
    uint public constant SIZE = 10;
    uint[] public array;
    function Add(uint newValue, uint value){
        require(newValue > 0, "Zero or positive number required.");
        if(array.length >= SIZE){

    	   addTwoValues(newValue);
        }
        else{
          array.push(newValue);
          addValue(newValue);
        }
    }
	function removeValue(uint value){
		for(uint i = value + 1; i < array.length; i++){
			array[value] = array[i];
		}
		uint lastElement;
		lastElement = array[array.length - 1];
		array[array.length - 1] = 0;
		array.
