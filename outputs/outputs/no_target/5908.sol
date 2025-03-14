pragma solidity ^0.8.0;
contract C {
    mapping(uint256 => uint256) private _data;
    uint8 private _size;
    mapping(uint8 => uint8) private _sizes;
    function setSizes(uint8 s1, uint8 s2, uint8 minSize, uint8 maxSize) public {
        require(s1 >= minSize);
        require(s2 >= minSize);
        _sizes[s1] = s1;
        _sizes[s2] = s2;
        if(_sizes[minSize]!= 0) {
            _sizes[minSize] = 0;
        } else {
            require(minSize >= _sizes[s1] && minSize < _data.length);
            _data[minSize] = 0;
        }
        if(_sizes[maxSize]!= 0) {
            _sizes[maxSize] = 0;
        } else {
            require(maxSize <= _sizes[s1] && maxSize > _data.length);
            _data[maxSize] = 0;
        }
    }
    function sizesSet(uint8 s1, uint8 s2) view public returns (uint16) {
        if(s1 == 0) {
            return s1;
        }
        uint16 res = _sizes[s1];
        if(res == 0) {
            require(s1 < _sizes.length);
            while(res == 0){
                res = _sizes[s1];
                s1++;
                if(s1 >= _sizes.length) {
                    res = _sizes[s1] = 0;
                }
            }
        }
        while(s2 >= _sizes.length) {
            res = _sizes[s2] = 0;
            s2++;
        }
        return res;
    }
    function getData(uint16 s1, uint16 s2) view public returns (uint8) {
        return _data[dataIndex(s1, s2)];
    }
    function setData(uint16 s1, uint16 s2, uint8 x) public {
        require(s2 >= _sizes[s1]);
        _data[dataIndex(s1, s2)] = x;
    }
    function dataIndex(uint16 s1, uint16 s2) public pure returns (uint8) {
        require(s2 >= _sizes[s1]);
        uint16 dataSize = _sizes[s2];
        require(dataSize >= s1);
        return dataSize;
    }
}
