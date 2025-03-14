pragma solidity ^0.8.0;
contract SemanticTest_v2 {

    using uint for uint256;

    struct Data {
        uint256 __a;
    }

    Data[] __data;
    constructor(uint256 x_, uint256 y_) {
        _initializeArray(__data, 1, 2);
        uint256 z_ = y_ * 4;
        _initializeArray({__data[0]: 0}, 1, 2);
        _initializeArray(__data, 0, 4);
        _initializeArray({__data[0]: 0}, 0, 4);
        _initializeArray(__data, 64, uint(-1));
        _initializeArray(__data[10], uint(-1));
        __data[0].__a = x_;
    }

    pragma solidity >=0.6.12;


    function _initializeArray(Data storage data, uint index, uint len)
        private
    {
        for (uint i = 0; i!= index; i++) {
            data.push();
        }
        for (uint i = index; i < index + len; i++) {
            delete data[i];
        }
    }

    function __value() view public returns (uint) {
        return __data[0].__a;
    }
}
