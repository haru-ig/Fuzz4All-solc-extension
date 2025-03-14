pragma solidity ^0.8.0;
contract Contract1
{
	function returnMin(uint from, uint to) public returns(uint) {
        if (from >= to)
        {
            if (from == 0)
            {
                return from;
            }
            else
            {
                return 0;
            }
        }
        uint result;
        if (from == to)
        {
            result = 0;
        }
        return min(to, from);
    }
	function returnMax(uint from, uint to) public returns(uint) {
        if (from >= to)
        {
            uint val;
            if (from == 0)
            {
                result = from;
            }
            else
            {
                val = from;
            }
            return val;
        }
        uint result;
        if (from == to)
        {
            result = to;
        }
        return max(to, from);
    }
	function returnMin2(uint from, uint to1, uint to2) public returns(uint) {
        if (to1 == to2)
        {
            if (from == 0)
            {
                return from;
            }
            else
            {
                return 0;
            }
        }
        return min(max(from, to1), max(from, to2));
    }
	function returnMax2(uint from, uint to1, uint to2) public returns(uint) {
        if (from >= to1 && from >= to2)
        {
            uint val;
            if (from == 0)
            {
                result = from;
            }
            else
            {
                val = from;
            }
            return val;
        }
        if (to1 == to2)
        {
            uint val;
            if (to1 == from)
            {
                result = 0;
            }
            else
            {
                return from;
            }
            return val;
        }
        return max(min(from, to1), max(from, to2));
    }
    function zeroMin(uint from, uint to) public returns(uint) {
        if (from < to)
        {
            return 0;
        }
        else
        {
            return from;
        }
    }
    function zeroMax(uint from, uint to) public returns(uint) {
        if (from >= to)
        {
            return 0;
        }
        else
        {
            return from;
        }
    }
    function max(uint to, uint from) public view returns(uint) {
        from >= to && (to = from);
        from >= to? (to = from -
