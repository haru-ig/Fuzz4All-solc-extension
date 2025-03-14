pragma solidity ^0.8.0;
contract Semantic6 {
    function balance6(uint256 _num) public returns(uint8, uint256) {
        uint8 x, y;
        x = 0x00;
        y = _num;
        return (x, y);
    }
}

pragma solidity ^0.8.0;
contract Semantic7 {
    function balance7(uint256 _num) public returns(uint8, uint256) {
        uint8 x, y;
        x = 0x00;

        uint256 x2;

        x = uint8(_num);

        x = 0x00;

        uint256 y2;

        uint8 z = uint8(_num);
        return (x, y);
    }
}
