pragma solidity ^0.8.0;
contract Test
{
    function test() public pure returns (string memory) {
        uint _data = 0x5688651f5d;
        string memory _str = _data.toString() + _data.toString();
    }
}
contract Testing
{
    function test() public pure returns (string memory) {
        uint _data = 0x5688651f5d;
        string memory _str = _data.toString();
        _str = "Hello World!";
    }
}
contract Tests
{
    function test() public pure returns (string memory) {
        uint _data = 0x5688651f5d;
        uint _numb = 0x568875e8b5;
        uint constant _data2 = 0x6b2df4f214df24dd8fc27d19a44a166f89e8f5b740413c320c2022c5ab21925;

        string memory _str1 = _data.toString();
        string memory _str2 = _numb.toString();
        string memory _str3 = mul(_str1, _data2);
        string memory _str4 = div(_str2, _data);
        string memory _str5 = mdiv(_data, _data2);
        string memory _str6 = div(mul(_str1, _str2), _data);

        string memory _str7;
        uint _index = 3;
        uint _limit = 8;
        for(; _index < _limit; _index = _index + 4)
        {
            _str7 = (_index + _str5)[_index];
        }
    }

    function mul(string memory _x, uint _y) public pure returns (string memory) {
        uint _result = _x.length * _y;
        bytes memory buf = abi.encodePacked(_x);
        bytes memory _buf = _x.substring(_x.length-buf.length,_x.length).toHex();
        bytes memory bin = binToDec(_buf);
        return abi.decode(abi.encodePacked(bin,bin,bin,bin,bin,bin,bin,buf),string);
    }

    function div(uint _y, uint _x) public pure returns (string memory)
    {
        uint _result = (_y - 1) / _x;
        bytes memory buf = abi.encodePacked(_y);
        bytes memory _buf = _y.toHex();
        bytes memory bin = binToDec(_buf);
        return abi.decode(abi.encodePacked(bin,bin,bin,bin,bin,bin,bin,buf),string);
    }

    function mdiv(uint _div1, uint _div2) public pure returns (string memory)
    {
        uint _result = (_div1 - 1) / _div2;
        uint constant _one
