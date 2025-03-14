pragma solidity ^0.8.0;



contract mapmap {
    mapping (uint256 => uint64[]) m;
    uint64 r;
    uint64[] m2;


    constructor() {
        bytes32 _v = blake2b('hello world', 0x0b, 0x0b);
        m[0x10001221][0xabc] = uint64[](3);
        m2[0x10001221] = 0x10001221;
        r = blake2b(_v, 0x0b, _v.length + uint64(0x0b));
    }



    function get(uint64 key) public view returns (uint64[], uint64) {
        uint64[] storage value = m[key];
        return (value, m2[key]);
    }




    modifier onlyCaller()
    {
        uint256 temp = block.gaslimit;
        Caller7 _caller = Caller7(address(this));
        address sender0 = msg.sender;
        _caller.c(temp);
        uint256 sender = msg.sender;
        (uint8 errorcode) = IERC20Token(_caller.address()).transferFrom(address(this), sender0, temp);
        require(errorcode == 0, 'Fallback code cannot execute a contract if sender does not have expected return value. \n Caller returned invalid value');
        (errorcode) = IERC1155(address(this)).safeTransferFrom(address(this), sender, temp);
        require(errorcode == 0, 'Fallback code cannot execute a contract if sender does not
