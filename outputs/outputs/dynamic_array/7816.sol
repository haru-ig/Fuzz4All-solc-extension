pragma solidity ^0.8.0;
contract Test20 {
    uint8[] _arr;
    uint8[] _returnValues;
    constructor()
        public
    {
        uint8[4] memory _arr3 = new uint8[](4);
        for (uint8 _i = 0; _i < 4; ++_i) {
            _returnValues[_i] = _i;
        }
        _arr[_returnValues[0]] = 15;
    }
    function test()
        external
        pure
        returns (uint8, uint8[]) memory
    {
        uint8 _arrLength = ArrayHelper.getSize(_arr);
        uint8[7] memory _arr =  new uint8[](_arrLength + 1);
        bool _res022 = ArrayHelper.set(_arr, _arrLength + 1, 6);
        _arr[_arrLength] = 6;
    }
    function test23(uint8[] memory _arr)
    public
    pure
    {
        uint8 _arrLength = ArrayHelper.getSize(_arr);
        _arr[_arrLength] = 8937;
    }
}
