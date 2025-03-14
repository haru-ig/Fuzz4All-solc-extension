pragma solidity ^0.8.0;
contract MutateProgram {
    constructor() public {
    }
    function _sum_uint_uint(uint x, uint y) private pure returns (uint) {
        return x + y;
    }
    function mutate_sum_uint_uint(uint x, uint y) public pure returns (uint) {
        uint _sum = _sum_uint_uint(x,y);
        uint _copy = _sum;
        uint _min = x;
        uint _max = y;
        uint _add = sum_uint_uint(_min, _max) + sum_uint_uint(_max,_min);
        return _sum == _copy? _copy:_sum == _add? _add:_sum!= x && _sum!= y && _sum < x && _sum > y? _copy:_copy!= _min? uint(_sum = min_uint(_min, y)) == x? _copy:uint(_sum = min_uint(_max, x)) == x? _copy:uint(_sum) == _add? _add:_sum == _max? _max:_sum == x? x:_sum!= y && _sum!= x && _sum > y? uint(_sum = max_uint(x, _max)) == x? _copy:uint(_sum = max_uint(x, _min)) == x? _copy:uint(_sum) == _add? _copy:_sum == _min? _min:_sum == x? x:_sum!= y && _sum!= x && _sum < y && _sum > x? uint(_sum = copy_uint(_min, _max, uint(_sum = min_uint(_max, _min)))) == x? _copy :uint(_sum) == _add? _copy :uint(_sum = copy_uint(_min, _max, uint(_sum = min_uint(_min, _max)))) == x? _copy :uint(_sum = copy_uint(_min, _max, uint(_sum = max_uint(_min, _max)))) == x? _copy :uint(_sum) == _add? _copy :uint(_sum) == _max? _copy:_sum!= x && _sum!= y&&_sum!= x && _sum!= y&&_sum < x&&_sum > y? x+ y : _copy!=_copy? uint(_sum = half_uint(_copy))==x?_sum=_sum+1:_sum=_sum+2:_sum!=_copy && _sum!= x? uint(_copy = half_uint(_copy)) == x? _copy: _copy!=_copy? min_uint(_copy,_copy):max_uint(_copy,_copy) == x? _copy:copy_uint(_copy,_copy,_copy):uint(_copy)==_copy?_sum=_sum+1:_sum=_sum+2:_sum!=_copy && _sum!=_copy && _sum!=_copy && _sum!=x:uint
