pragma solidity ^0.8.0;
contract Test1 {
    uint256[] memory _mem;
    uint256 _value = 845;
    address payable _addr;
    modifier onlyCaller(){
        require(_addr == msg.sender,"not the caller");
        _;
    }
    constructor()
        public
    {
        _mem[0] = 8;
        _mem[100] = 15;
        _mem[9] = 1;
    }
    function setCaller(address payable addr)
        onlyCaller
        public
    {
        _addr = addr;
    }
    function _getCaller()
        public view
        returns(address payable)
    {
        return _addr;
    }
}

pragma solidity ^0.8.0;
contract Test6a {
    uint[3] _list = [1];
    uint8 _b;
    uint[16] _mem = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
    uint _value = 845;
    constructor ()
        public
    {
        _list[2] = 420;
        _b = 1;
    }
}
