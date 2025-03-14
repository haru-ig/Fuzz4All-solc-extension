pragma solidity ^0.8.0;
contract CallerExample15Mutated {
    uint public subtracted = 0;
    function subtract(uint,uint) public pure {}
    function subtractAgain(uint,uint) public pure {}
    function add(uint x,uint y) public pure returns (uint) {
        return x + y;
    }
    function _add(uint x, uint y) private pure returns (uint) {
        return x + subtract(x, y);
    }
    function _sub(uint x, uint y) private pure returns (uint) {
        return subtract(x, y);
    }
    function _mul(uint,uint) private pure returns (uint) {}
}
contract CallerExample15MutatedMutated {
    uint public subtracted = 0;
    function subtract(uint,uint) public pure {}
    function subtractAgain(uint,uint) public pure {}
    function mul(uint,uint) public pure returns (uint) {
        return 0;
    }
    function _mul(uint,uint) private pure returns (uint) {}
}
contract CallerExample3 {
    function get(address payable _self)
        public
        view
        returns (uint)
    {
        return _self.balance;
    }
}
contract CallerExample4 {
    function get(address payable _self, uint _amount)
        public
        view
        returns (uint)
    {
        uint selfBalance = _self.balance;
        return selfBalance >= _amount? _amount : selfBalance;
    }
}
contract CallerExample5 {
    function get(address payable _self, uint _start, bytes calldata _message)
        public
        view
        returns (uint, bytes memory)
    {
        uint selfBalance = _self.balance;
        bool selfNegative = _self.isNegative();
        require(selfNegative == (uint8(true) < (uint8(_start) + uint8(_message.length))));
        uint _ret = selfBalance < _start? 0 : _start;
        return (_ret, _message);
    }
}
contract CallerExample6 {
    function get(address payable _self, bytes calldata _message)
        public
        view
        returns (uint, bytes memory)
    {
        uint selfBalance = _self.balance;
        bool selfMinusZero = selfBalance == uint160(0);
        bool selfPositive = selfBalance > uint160(0);
        if(selfMinusZero || selfPositive)
            return (selfBalance < 0? 0 : selfBalance, _message);
        return (uint160(0), _message);
    }
}
contract CallerExample7 {
    mapping (address => uint) internal numberMap;
    uint256 public total;
    constructor (uint _x) public {
        numberMap[msg.sender] = _x;
        total++;
    }
    function get(address _self) public view returns (uint
