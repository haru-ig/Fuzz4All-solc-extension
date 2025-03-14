pragma solidity ^0.8.0;
contract Array_2 {
    uint64[] public mutarray;
mapping (uint64 => uint64[]) public mutarray2;
address[] public a1;
address[] public a2;
uint64[] public mutarray3;
    uint64[] public mutarray4;
    uint64[] public mutarray5;
    uint64[] public mutarray6;
    uint64[] public mutarray7;
    address[] public mutarray8;
    address[] public mutarray9;
    address[] public mutarray10;
    }

pragma solidity ^0.8.0;
contract Array_2 {
    uint64[] public array_literals;
    uint64[] public array_literals2;
address[] public array_literals3;
address[] public array_literals4;
address[] public array_literals5;
address[] public array_literals6;
address[] public array_literals7;
    uint64[] public array_literals8;
    address[] public array_literals9;
    address[] public array_literals10;
    }

pragma solidity ^0.8.0;
contract Array_2 {
    uint64[] public array1;
    uint64[] public array2;
uint64 public min;
uint64 public max;
mapping (uint64 => uint64) public minarray;
mapping (uint64 => uint64) public maxarray;

    function findmin(uint64[] memory array_) {
        min = array_[0];
        for (uint64 i = 1; i < array_.length; i++) {
            if (array_[i] > max) {
                max = array_[i];
                minarray[i] = min;
            } else if (array_[i] < min) {
                min = array_[i];
                minarray[i] = min;
            }
        }
    }

    function findmax(uint64[] memory array_) {
        max = array_[array_.length - 1];
        for (uint64 i = array_.length - 2; i >= 0; i--) {
            if (array_[i] < min) {
                min = array_[i];
                minarray[i] = min;
                if (i!= (array_.length - 2)) {
                    max = array_[i];
                    maxarray[i] = max;
                }
            } else if (array_[i] > max) {
                max = array_[i];
                maxarray[i] = max;
            }
        }
    }
}

pragma solidity ^0.
