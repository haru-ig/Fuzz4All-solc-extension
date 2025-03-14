pragma solidity ^0.8.0;
contract ArrayExample {
    function getNumberAtAddress(address memory address_, uint index_) public view returns (uint _num) {
        return numberMapping[uint(address_)];
    }
    function insertAtAddress(address memory address_, uint _num, uint index_) public {
        uint address_ = uint(address_);
        numberMapping[address_] = _num;
    }
    function setMin(uint _newMin) public {
        if (minElement > _newMin) {
            minElement = _newMin;
        }
    }

    function getMin() public view returns (uint _elem_) {
        return minElement;
    }

    function setMax(uint _newMax) public {
        if (maxElement < _newMax) {
            maxElement = _newMax;
        }
    }
    function getMax() public view returns (uint _elem_) {
        return maxElement;
    }

    function getSum() public view returns (uint _elem_) {
        uint length = emptyArray.length;
        for (uint i = 0; i < length; i++) {
            uint index_ = arrayLengthToIndex(i);
            uint num = emptyArray[index_];
            _elem_ += num;
        }
        return _elem_;
    }

    function setSum(uint newSum) public {
        if (sumElement!= newSum) {
            sumElement = newSum;
        }
    }

    function getSumMin() public view returns (uint _elem_) {
        uint length = emptyArray.length;
        for (uint i = 0; i < length; i++) {
            uint index_ = arrayLengthToIndex(i);
            uint num = emptyArray[index_];
            if (minElement < num && num!= 0) {
                _elem_ = num;
                break;
            }
        }
        return _elem_;

    }

    function getSumMax() public view returns (uint _elem_) {
        uint length = emptyArray.length;
        for (uint i = 0; i < length; i++) {
            uint index_ = arrayLengthToIndex(i);
            uint num = emptyArray[index_];
            if (maxElement > num && num!= 0) {
                _elem_ = num;
                break;
            }
        }
        return _elem_;
    }

    function getMinAndSum() public view returns (uint _elem_, uint _sum_, uint _length_) {
        minElement = 0;
        uint length = emptyArray.length;
        for (uint i = 0; i < length; i++) {
            uint index_ = arrayLengthToIndex(i);
            uint num = emptyArray[index_];
            _sum_ = _sum_ + num;
            if (minElement == 0) {
                minElement = num;
            }
            if (maxElement < num) {
                maxElement = num;
            }
            if (num < 0 && num!= 0) {
                return (num, _sum_, i);
            }
        }
    }

    function getMinAndSumSorted(uint _count) public view returns (uint[] memory _result
