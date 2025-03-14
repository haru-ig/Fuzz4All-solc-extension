pragma solidity ^0.8.0;
contract Failing {
}
contract Array {
    constructor (uint256[] memory test_array) public {}
    function test() public {
        uint count = 0;
        for(uint i=0;i<3;i++){
            require((i==2)|(test_array[i]), "Array violation");
        }
        uint min = 0;
        for(uint256 i : test_array){
            if(min==0){
                min = i;
            }
            else if(min>i){
                min = i;
            }
        }
        uint max = 0;
        for(uint256 i : test_array){
            if(max==0){
                max = i;
            }
            else if(max<i){
                max = i;
            }
        }
        require(min == 0, "Array violation");
        require(max == 3, "Array violation");
        count = test_array.length;
        for(uint256 i : test_array){
            count -= i;
        }
        require(count==0, "Array violation");
    }
    function set(uint256 index, uint256 value, bytes memory mybytes) public {
        require(index<3);
        test_array[index] = value;
    }
    function get(uint256 index) public view returns (uint256){
        return test_array[index];
    }
    function sort(uint256[] memory sorted) public {
        uint256 j;
        for(uint i=0;i<2;i++){
            for(j=1;j<sorted.length;j++){
                if(test_array[j-1]>sorted[j]){
                    uint temp = sorted[j];
                    sorted[j] = test_array[j-1];
                    test_array[j-1] = temp;
                }
            }
        }
    }
}
