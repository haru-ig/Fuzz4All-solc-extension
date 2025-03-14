pragma solidity ^0.8.0;
contract newStorage2 {
    uint[] array;
    uint b;
    constructor() {
        array = new uint[](2);
        array[0] = 15;
        b = 15;
    }
    function set(uint _value) public {
        array[1] = _value;
        b = 15;
    }
    function get() public view returns (uint, uint) {
        return (array[0], b);
    }
}
contract newStorage3 {
    bytes32 b;
    constructor() {
        b = "0xf86d8ce69af6968b76b91f8f45495f16ec0cfea71bf54704c22110df4b42b2f7";
    }
    function set(bytes memory _value) public {
        b = _value;
    }
    function get() public view returns (bytes32) {
        return b;
    }
}
