pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    mapping (uint8 => uint8) private bignumbers;






    uint8 _data;
    function set(uint8 _data) public {

        _data = _data + 1;
        require(_data < 5, 'Invalid');
        data = uint8(_data);
    }
    function getter() public view returns (uint8) {
        return uint8(uint16(_data*32 + 19) / 320);
    }




    function foo(uint16 _a, uint16 _b) private returns (uint256) {
        return uint256(_a / _b**2);
    }
    function changeData(uint16 _a, uint16 _b) internal {
        uint16 d = uint16(data);
        uint16 new_d = (d / _a + _b) / 3;
        bignumbers[new_d] = d;
        data = new_d;
    }
    function bar(uint16 _a, uint16 _b) public {
        if (_a > 26 ** 14 * 32) {
            changeData(_a, _b);
        }
        require(bignumbers[uint16(data / _a + _b) / 3]==data/3, 'Invalid');
        require(bignumbers[uint16(data + _b) / 3]==data/3, 'Invalid');
        _data = uint8(data/2);
    }
}
contract Caller {
    uint256 public constant N = 250;

    MutateExample public example;

    event EthBalanceChanged(uint constant value);
