pragma solidity ^0.8.0;
contract Array {
    function pushArray(uint a, uint[] memory data) public {
        if(data.length == 0){
            data = new uint[](1);
            data[0] = a;
        }else if(data.length == 1) {
            if(data[0] > a){
                data[0] = a;
            }
        }else {
            uint min_element = data[0];
            uint max_element = data[0];
            uint a_element = data[0];
            for(uint i = 1; i < data.length; i++){
                a_element = a_element < data[i]? a_element : data[i];
                max_element = max_element > data[i]? max_element : data[i];
                min_element = min_element < data[i]? min_element : data[i];
            }

            uint[] memory new_array = new uint[](data.length);
            new_array[0] = min_element;
            for(uint i = 1; i < data.length; i++){
                new_array[i] = a_element == data[i]? a_element : data[i];
            }

            for(uint i = new_array.length - 1; i > 0; ){
                if(min_element > new_array[i]){
                    min_element = max_element;
                    for(uint i = i - 1; i >= 0; i--){
                        new_array[i + 1] = new_array[i];
                        new_array[i] = 0;
                    }
                    break;
                }else if(min_element == new_array[i]){
                    break;
                }
                new_array[i] = min_element;
            }
        }
    }
}
