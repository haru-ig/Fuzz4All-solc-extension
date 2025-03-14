pragma solidity ^0.8.0;
contract Test39 {
    function f(int[] memory a) public returns (int[] memory) {
        for(int i=0;i<a.length;i++) {
            a[i] = 10;
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract Test40 {
    function f(int[] memory a) public returns (int[] memory) {
        for(int i=0;i<a.length;i++) {
            a[3] = 10;
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract Test41 {

    uint256 arrayLength = 20;


    function test00(int[] memory array) public returns (bool) {
        uint256 c;
        for(c=0; c<arrayLength; c++) {
            if(array[c] == 20 && array[c+0] == 40) {
                array[arrayLength-1] = 30;
                return true;
            }
        }
        return false;
    }


    function test01(int[] memory array) public returns (bool, int){
        bool valueReverted = false;
        uint256 c;
        for(c=arrayLength+1; c < arrayLength; c++) {
            array[c] = uint256(10);
        }
        array[40] = 50;
        c = 0;
        while(c < 3){
            int[] memory sub_result = test00(array);
            if(sub_result[1]!= 40 || sub_result[0]!= c+1) {
                value
