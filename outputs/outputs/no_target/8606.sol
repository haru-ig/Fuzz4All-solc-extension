pragma solidity ^0.8.0;
contract Old {
    uint constant one = 1;
    uint constant two = 2;

    uint constant x = one ^ 1;
    uint constant y = one << 1;
    uint constant z = (one << 1) ^ one;
    uint constant a = one << 8;
    uint constant b = two << 8;
    uint constant c = a & b ^ (a >> 8);

    uint constant max_positive = 2**16-1;
    uint constant max_negative = -2**16;
    uint constant positive = 2**16 + 1;
    uint constant negative = -2**16;

    function safe_div(uint a, uint b) public pure returns (uint ret) {
        require(b >= 1, "bad_b");
        if (a == uint(-1)){

            if (b == negative)
                return uint(uint(-1)) + 1;
            return uint(uint(-1)) + b + 1;
        }
        uint256 t_a = toUnsigned(a);
        uint256 t_b = toUnsigned(b);
        uint256 result = t_a / t_b;

        if (t_b > 0 && a == uint(-1)) {
            require(ret == uint(-1), "bad_overflow");
            return uint(uint(-1)) + a * b;
        }
        return result;
    }

    function safe_sub(uint a, uint b) public pure returns (uint256){
        uint max_ret = toUnsigned(uint256(max_positive));
        uint min_ret = toUnsigned(uint256(max_negative));
        if (max_ret < min_ret)
            min_ret = toUnsigned(uint256(int(-min_ret)));
        require(a >= min_ret, "bad_a");

        uint256 ret = a >= min_ret? a.sub(b) : min_ret.sub(a).add(b);
        if (a < 0 && b >= 0)
            ret = min_ret.sub(ret);
        return ret;
    }

    function add(uint a, uint b) public pure returns (uint) {
        return safe_add(a, b);
    }

    function safe_sub(uint a, uint b, uint min_ret) public pure returns (uint) {

        if (a >= max_negative && b >= max_positive){
            if (min_ret == max_positive)
                return uint(uint(-1
