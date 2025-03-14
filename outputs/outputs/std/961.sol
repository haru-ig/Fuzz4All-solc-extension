pragma solidity ^0.8.0;
contract Mutate234To112
{
    bool a;
    bool[] b;
    bool[][] c;
    uint256[] d;

    function get(uint i) public view returns (bool)
    {
        return (_bytes[i] >= 100);
    }

    function set(uint256 x) public {
        _bytes[0] = 100 * x / 103;
    }

    function append(uint256 x) public {
        _bytes.push(x);
    }

    function insert(uint256 x) public {
        uint256 k=i;
        for (uint256 j = 1; j < (_bytes.length - 1); ++j) {
            _bytes[j] = _bytes[j - 1];
        }
        _bytes[0] = x;
        b.push(x);
    }
}
