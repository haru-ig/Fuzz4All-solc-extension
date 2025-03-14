pragma solidity ^0.8.0;
struct Array2 {
	uint[] memory array;
}
 contract MinMax2 {
	function getMin(Array2 memory) public returns(uint);
	function getMax(Array2 memory) public returns (uint);
}
contract Array2Mod {
    function add(Array2 memory a, Array2 memory b) public {
        a.array.push(b.array.length);
        uint[] memory n = b.array;
        a.array.push(0);
    }
}
contract Array2Mod2 {
    function addMin(uint[] memory a, uint[] memory b) public {
        a[1] = 0;
        a[0] = 1;
        a[a.length] = (a.length + 1);
    }
}

uint[] public array = [1, 2, 3];
function getMin(Array2 memory a) public returns(uint) {
    return a.array[0];
}
function getMax(Array2 memory a) public returns(uint) {
    uint element = a.array[a.array.length-1];
    for (uint i = a.array.length-1; i > 0; i--) {
        if (element < a.array[i-1]) {
            return element;
        }
        element = a.array[i-1];
    }
    return element;
}
function modArray(Array2 memory a, Array2 memory b) public {
    Array2Mod2 memory x = Array2Mod2(a).addMin(b);


}
