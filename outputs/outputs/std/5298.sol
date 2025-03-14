pragma solidity ^0.8.0;
contract Array {
    function count_zeroed(uint[] memory x) public pure returns (uint count){
        for (uint i = 0; i < x.length; i++){
            if (x[i] == 0){
                count += 1;
            }
        }
    }
    function findMin(uint[] memory x) public pure returns (uint _minimum){
        for (uint i = 0; i < x.length; i++){
            if (x[i] < _minimum){
                _minimum = x[i];
            }
        }
    }
    function findMax(uint[] memory x) public pure returns (uint _maximum){
        for (uint i = 0; i < x.length; i++){
            if (x[i] > _maximum){
                _maximum = x[i];
            }
        }
    }
    function print(uint[] memory x) public pure {
        for (uint i = 0; i < x.length; i++) {
            if (i == x.length - 1) {
                print(" ", x[i]);
            }else {
                print(x[i] == 0? ',': ', ', x[i]);
            }
        }
    }
    function sum(uint[] memory x) public pure returns (uint _sum){
        for (uint i = 0; i < x.length; i++) {
            _sum += x[i]; }
    }
    function sort(uint[] memory x) public pure {
        uint c = x.length;
        while (c > 0){
            for (uint i = 1; i < c; i++){
                if (x[i] < x[i - 1]){
                    uint aux = x[i - 1];
                    x[i - 1] = x[i];
                    x[i] = aux;
                }
            }
            c -= 1;
        }
    }
}
