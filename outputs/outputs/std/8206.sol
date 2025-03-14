pragma solidity ^0.8.0;
contract Array {
	function setMin(uint[] memory arr, uint minimumValue) public {
		uint i = uint(minNum(arr));
		uint end = uint(maxNum(arr));
		for(uint i; i<=end; i++){
			if(arr[i]<minimumValue){
				i+=1; continue;
			}
			arr[arr[i]] = uint(i-1); arr[i] = uint(i-1); arr[uint(arr[i])] = uint(i);
		}
	}
	function minNum(uint[] memory arr) private pure returns(uint){
		for(uint i; i<arr.length; i++)
			if(arr[i]!= uint(i-1)) break;
		for(uint i; i<arr.length; i++)
			if(arr[i]<arr[i-1]) break;
		return arr[i];
	}
	function maxNum(uint[] memory arr) private pure returns(uint){
		for(uint i; i<arr.length-1; i++)
			if(arr[i]<arr[i+1]) break;
		for(uint i; i<arr.length; i++)
			if(arr[i]>arr[i-1]) break;
		return arr[i];
 }
	function sortArray(uint[] memory arr) public {
		sortArray(arr,0,uint(arr.length-1));
	}
	function sortArray(uint[] memory arr, uint start, uint end) public {
		uint i, j, temp;
		uint swapIndex;
		for(i=1; i<end; i++){
			swapIndex = uint(i) - 1;
			if(arr[i]>arr[swapIndex]) swapIndex+=1;
			else break;
		}
		for(j=end; j>start; j--){
			temp = arr[end]; arr[end] = arr[j]; arr[j] = temp;
			swapIndex = uint(j) - 1;
			if(arr[end]>arr[swapIndex]) swapIndex+=1;
			else break;
		}
	}
}
