pragma solidity ^0.8.0;
contract MultiMappingY8 {
    event EventOne(uint256 indexed x);
    event EventTwo(uint256 indexed x);
    mapping(uint256 => uint256) b;
    mapping(uint256 => uint256) c;
    mapping(uint256 => uint256) public a;
    function simpleArray() public returns (uint256[] memory){
        uint256[] memory out = new uint256[](2 * c.length + 1);
        uint256 k = 0;
        for(uint256 i = 0; i < 2 * c.length; i++){
            uint256 x = inc(i + 1);
            (a[i], c[i]) = (x, x*2);
            b[k] = x;
            k++;
        }
        for(uint256 i = 0; i < 2 * c.length + 1; i++){
            out[i] = b[c.length + i];
        }
        emit EventOne(out.length);
        emit EventTwo(a.length);
        emit EventTwo(array.length);

        return out;
    }
}
